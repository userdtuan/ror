# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# TblCategoryNews.create!(
#   :cate_news_id => 15, :cate_news_name => 'Mẹo Vệ Sinh Nhà Sạch', :cate_news_slug => 'meo-ve-sinh-nha-sach', :cate_news_status => 1, :cate_news_desc => 'Mẹo Vệ Sinh Nhà Sạch nhiều người hay làm'
# )
#12, 'Trần Thị Mỹ Lệ', '09170054 93', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Giám đốc công ty Khánh Huy'
# INSERT INTO tbl_admin (admin_id, admin_name, admin_phone, admin_email, admin_password, admin_position) VALUES
# (12, 'Trần Thị Mỹ Lệ', '09170054 93', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Giám đốc công ty Khánh Huy'),
# (14, 'Trần Quốc Nguyên', '0819682325', 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Quản lý Admin');
# Admin.create!(email: 'admin@kolosek.com',
#               password: 'password',
#               password_confirmation: 'password')