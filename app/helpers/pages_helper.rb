# coding: utf-8
module PagesHelper
  def generate_path(page)
    if(page.parent.length < 1)
      page.name
    else
      [page.parent, page.name].join('/')
    end
  end

  #**[строка]** => <b>[строка]</b> (выделение жирным)
  #\\[строка]\\ => <i>[строка]</i> (выделение курсивом)
  #((name1/name2/name3 [строка])) преобразовывать в ссылку на страницу [site]name1/name2/name3:
  #   <a href="[site]name1/name2/name3">[строка]</a> Однако, при редактировании страницы пользователь должен править неформатированный текст.
  def prepare_content(content)
    content.gsub!(/\*+\[(?<string>[\w\bа-яА-Я]+)?\]\*+/, '<b>\k<string></b>')
    content.gsub!(/\\+\[(?<string>[\w\bа-яА-Я]+)?\]\\+/, '<i>\k<string></i>')
    content.gsub!(/\(+(?<href>[\SA-Za-z0-9а-яА-Я\/]+).\[?(?<lname>[\SA-Za-z0-9а-яА-Я]+).[\]\)]./, '<a href="/\k<href>">\k<lname></a>')
    content
  end
end
