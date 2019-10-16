module ApplicationHelper
  def full_title(page_title = '')
    base_title = "GLServer"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def print_date(date)
    date.strftime('%Y/%m/%d')
  end

  def print_date2(date)
    date.strftime('%m/%d')
  end

  def print_time(time)
    time.strftime('%H:%M')
  end

  def compare_time(time1, time2)
    time1.to_s(:time) > time2.to_s(:time)
  end

  def generate_id_long(name)
    md5 = Digest::MD5.new.update(name + Time.now.to_s)
    md5_string = md5.to_s
  end
  
end
