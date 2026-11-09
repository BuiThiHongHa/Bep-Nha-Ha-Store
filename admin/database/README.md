# Bộ dữ liệu mock ban đầu — XAMPP localhost

Database mới: import db.sql rồi seed_demo.sql.
Database đã có bảng: sao lưu nếu có dữ liệu tự sửa, rồi import seed_demo.sql; không import lại db.sql.

Seed khôi phục 21 sản phẩm, 3 danh mục, 6 danh mục con, 3 nhóm sản phẩm, 9 tài khoản,
9 đơn hàng và 23 chi tiết đơn hàng, giỏ hàng, bài viết, phản hồi, bình luận, media,
menu, slide, thông tin cửa hàng và các bảng dữ liệu mock còn lại từ dump gốc.
Bản ghi trùng khóa sẽ được cập nhật về dữ liệu mock; không xóa các bản ghi ngoài bộ mẫu.

Đăng nhập admin.php: admin / DemoHa2026!
Nhân viên: moderator / DemoHa2026!
Khách hàng: user / DemoHa2026!
Tất cả tài khoản gốc đều được đặt lại mật khẩu thành DemoHa2026! bằng bcrypt.
Các tài khoản admin.demo/staff.demo/customer.demo từ bản seed trước (nếu đã import) không bị xóa.

Không dùng trên Internet. Email/địa chỉ/số điện thoại, session và mã xác minh đã đổi sang dữ liệu demo.
Không phục hồi mật khẩu cũ, SMTP password hoặc API key.
Lệnh bổ sung cột dùng cú pháp MariaDB ADD COLUMN IF NOT EXISTS (XAMPP).
