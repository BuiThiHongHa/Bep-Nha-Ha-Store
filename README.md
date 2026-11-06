# Bếp Nhà Hà Store

**Bài tập lớn Lập trình Web — Chủ đề 7: Hệ thống bán hàng trực tuyến mini**

**Sinh viên thực hiện:** Bùi Thị Hồng Hà
**Hình thức:** Cá nhân

Website bán đồ ăn và thức uống, tổ chức theo thư mục Model/View/Controller cho khu vực khách hàng và quản trị. Chạy local với PHP, MySQL/MariaDB và Apache (XAMPP); không sử dụng Docker.

## Chức năng có trong mã nguồn

- Trang chủ, danh mục, chi tiết sản phẩm, tìm kiếm và phân trang.
- Giỏ hàng bằng session, đồng bộ giỏ theo tài khoản.
- Tạo đơn và chi tiết đơn; đọc lại giá và kiểm tra tồn kho ở server.
- Quản lý sản phẩm, danh mục, tài khoản và xử lý đơn.
- Endpoint JSON `api/check-stock.php?id={id}` và Fetch kiểm tra tồn kho.
- Giao diện sáng/tối và nhận diện Bếp Nhà Hà Store.

## Công nghệ và giới hạn hiện tại

Website chính dùng **MySQLi**, không phải PDO. Có tổ chức thư mục MVC nhưng chưa tách SQL khỏi toàn bộ view. Login hỗ trợ `password_verify()` và nâng cấp hash MD5 cũ; các luồng tạo/đổi/reset mật khẩu chưa đồng bộ. CSRF mới có ở một số controller.

Cần hoàn thiện transaction/khóa tồn kho, quyền sở hữu đơn, phân quyền từng action, quy trình reset mật khẩu, lọc khoảng giá và SQL khôi phục đúng phiên bản. Không coi các chức năng này là đã nghiệm thu.

## Bản nộp public

Repo này là bản source xuất từ dự án để nộp bài, không sao chép lịch sử cũ có cấu hình nhạy cảm. Các commit được chia theo nhóm tệp với thời gian xuất bản thực tế, không đại diện cho ngày phát triển từng chức năng. SQL chỉ giữ cấu trúc bảng, đã loại dữ liệu tài khoản/khách hàng; cần chuẩn bị dữ liệu thử riêng. Không có `.env`, log runtime hoặc ảnh đại diện cá nhân.

## Cài đặt local

1. Đặt source trong thư mục htdocs của XAMPP; có thể đặt tên `online-shop-mini` hoặc cấu hình alias/symlink tương ứng.
2. Cài dependency bằng `composer install` với phiên bản PHP và extension phù hợp.
3. Sao chép `.env.example` thành `.env`, cấu hình DB và SMTP riêng. Không commit `.env` hoặc mật khẩu thật.
4. Dùng DB riêng `mini_store_db`. **Chưa import tự động:** `admin/database/db.sql` là dump cũ, dùng MyISAM và thiếu `products.total_stock` trong khi code hiện cần trường này. Phải sao lưu và đối chiếu/migration schema trước khi chạy. Không import schema B5/B6–8 vào DB website.
5. Đồng bộ `PATH_URL`, `RewriteBase`, `ErrorDocument` và đường dẫn thực tế; mẫu hiện dùng `/online-shop-mini/`.
6. Khởi động Apache/MySQL rồi truy cập `http://localhost/online-shop-mini/`; quản trị ở `admin.php`.

Mẫu cấu hình mới dùng DB host `127.0.0.1`, port `3306`, DB `mini_store_db` và không chứa mật khẩu. File `.env` đang dùng tại máy không bị thay đổi.

## Cấu trúc

```text
admin/       controllers, models, views quản trị và tài khoản
content/     controllers, models, views khách hàng
api/         endpoint JSON kiểm tra tồn kho
lib/         hàm chung và cấu hình
public/      CSS, JS, hình ảnh và tài nguyên
index.php    entry point khách hàng
admin.php    entry point khu vực tài khoản/quản trị
```

## Kiểm tra

- Đã chạy PHP lint trên 295 tệp PHP ứng dụng, không gồm vendor/CKFinder: không lỗi cú pháp.
- Đợt rà soát báo cáo chưa kết nối được HTTP/MySQL local; chưa có kết quả PASS cho nghiệp vụ đặt/hủy đơn, đồng thời hoặc quyền trên đơn.
- Cần chạy đủ tám ca nghiệm thu của Chủ đề 7 trên DB thử nghiệm sau khi khôi phục môi trường.

## Bản quyền

Giữ nguyên `LICENSE` và thông báo bản quyền trong các tệp mã kế thừa. Thông tin sinh viên phía trên xác định người thực hiện bài tập và các điều chỉnh của dự án, không thay thế tác giả của mã nền.
