class HSearch
  attr_reader :arr

  #Переменная @arr не изменяется в процессе работы
  #чтобы была возможность сразу применить другой фильтр
  def initialize(arr)
    @arr = arr
    @sorted = false
  end

  def sort
    @arr.sort_by! { |h| h[:age]}
  end

  def search(*filters)

    #Массив в который будут занесены конечные результаты
    complete_arr = nil
    #Применим все фильтры по очереди
    for f in filters
      if complete_arr.nil?
        complete_arr = arr
      end

      #единственный способ(из тех что пришли мне в голову и при этому сработал) получения всех подходящих полей  - перебор
      #после получения первого совпадения бинарным поиском
      iar = binary_search(@arr, 0, arr.length-1, f)
      p 'Binary search ended'
      i = iar
      tmp = []

      #Поиск "назад"
      while (f[:from]..f[:to]).member? arr[i][f[:by]]
        tmp << arr[i]
        i -= 1
      end

      i = iar+1 #Дабы избежать совпадений
      #Поиск "вперед"
      while (f[:from]..f[:to]).member? arr[i][f[:by]]
        tmp << arr[i]
        i += 1
      end
      complete_arr = tmp
    end
    return complete_arr
  end

  #Собственно сам метод поиска
  def binary_search(arr, from, to, filter = { :by => :age, :from => 0, :to => 1})
    s = (from+to)
    bl = (s/2).to_i

    if arr[bl][filter[:by]] < filter[:from]
      self.binary_search(arr, bl+1, arr.length-1)
    elsif (arr[bl][filter[:by]]) > filter[:to] 
      self.binary_search(arr, from, bl)
    elsif (arr[bl][filter[:by]]) >= filter[:from] and arr[bl][filter[:by]] <= filter[:to]
      if (filter[:from]..filter[:to]).member? arr[bl][filter[:by]]
        return bl
      end
    end
  end
end

start = Time.now.to_f

#Генерируем тестовые данные
humans = []
10_000_000.times do |i|
  random = Random.new()
  humans << 
  {
    age: random.rand(0..100), #Мало
    height: random.rand(0..200), #Баскетболу - нет
    salary: random.rand(0..1000000.0).round(2), #Нормально так
    weight: random.rand(0..200), #Много
  }
  p i 
end
p humans[1000][:salary]
p Time.now.to_f - start
search_start = Time.now.to_f
p 'Start search'

search = HSearch.new(humans)

search.sort

#Поиск
filtered_humans = search.search({ :by => :age, :from => 0, :to => 3})

p Time.now.to_f - search_start

