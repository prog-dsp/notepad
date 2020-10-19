class Post

  def initialize
    @created_at = Time.now # инициализируем текущее время
    @text = nil
  end

  def read_from_console # тут наши записи должны запрашивать ввод пользователя
    # todo
  end

  def to_strings # должен возвращать содержимое объекта в виде массива строк
    # todo
  end

  def save # будет сохранять запись в файл
    file = File.new(file_path, "w")

    for item in to_strings do
      file.puts(item)
    end

    file.close
  end

  def file_path # путь к файлу, куда записывать содержимое объекта
    current_path = file.dirname(__FILE__)

    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")

    return "#{current_path}/#{file_name}"
  end
end