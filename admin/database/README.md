# Dữ liệu demo trên XAMPP

Chỉ dùng bộ dữ liệu này trên localhost. Không triển khai các tài khoản có mật khẩu công khai lên Internet.

Database mới: tạo `mini_store_db`, import `db.sql`, rồi import `seed_demo.sql`.
Database đã tạo bảng: chỉ import lại `seed_demo.sql`. Git pull không tự cập nhật database.

Tài khoản mẫu (mật khẩu chung `DemoHa2026!`):
- `admin.demo` — quản trị, đăng nhập tại `/Bep-Nha-Ha-Store/admin.php`.
- `staff.demo` — nhân viên.
- `customer.demo` — khách hàng.

Seed bổ sung vai trò, tài khoản, 12 sản phẩm, danh mục, thông tin cửa hàng minh họa, menu và banner.
Không có tài khoản thật, dữ liệu khách hàng, đơn hàng thật hoặc cấu hình SMTP bí mật.
Không tự ghi đè tài khoản hay bản ghi đã tồn tại. Nếu đã đổi mật khẩu, import lại không đặt lại mật khẩu.
Các bản ghi danh mục/sản phẩm dùng ID cố định nên bộ seed dành cho database demo, không dùng để gộp vào dữ liệu thật.
Thông tin cửa hàng, mức giá, tồn kho và mật khẩu là giá trị minh họa, không phải thông tin kinh doanh thực.
