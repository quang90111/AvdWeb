<!-- <!DOCTYPE html>
<html>
<head>
    <title>Thống kê bán hàng</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <?php
    // Dữ liệu bán hàng
    $sales = [
        ['product' => 'Product A', 'quantity' => 10, 'revenue' => 1000],
        ['product' => 'Product B', 'quantity' => 5, 'revenue' => 500],
        ['product' => 'Product C', 'quantity' => 8, 'revenue' => 800],
    ];

    // Tạo mảng dữ liệu cho biểu đồ cột
    $chartLabels = [];
    $chartData = [];

    foreach ($sales as $sale) {
        $chartLabels[] = $sale['product'];
        $chartData[] = $sale['revenue'];
    }
    ?>

    <h2>Thống kê bán hàng</h2>

    <canvas id="salesChart"></canvas>

    <script>
        // Định nghĩa dữ liệu và tùy chọn cho biểu đồ cột
        var chartData = {
            labels: <?php echo json_encode($chartLabels); ?>,
            datasets: [{
                label: 'Doanh thu',
                data: <?php echo json_encode($chartData); ?>,
                backgroundColor: 'rgba(54, 162, 235, 0.5)',
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 1
            }]
        };

        var chartOptions = {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        };

        // Tạo biểu đồ cột
        var salesChart = new Chart(document.getElementById('salesChart'), {
            type: 'bar',
            data: chartData,
            options: chartOptions
        });
    </script>
</body>
</html> -->


<!DOCTYPE html>
<html>
<head>
  <title>Sales Statistics</title>
  <!-- Include Chart.js library -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
  <canvas id="salesChart"></canvas>

  <?php
  $connection = mysqli_connect('localhost', 'root', '', 'projectphp');

  // Assuming you have a database connection established
  // Retrieve data from the database to calculate statistics
  $query = "SELECT SUM(gia) AS total_price, SUM(soluong) AS total_quantity FROM chitietdonhang";
 
$result = mysqli_query($connection, $query);
  $data = mysqli_fetch_assoc($result);

  // Prepare data for chart
  $totalPrice = $data['total_price'];
  $totalQuantity = $data['total_quantity'];

  // Create JavaScript code for the chart
  echo '<script>
    var ctx = document.getElementById("salesChart").getContext("2d");
    var salesChart = new Chart(ctx, {
      type: "bar",
      data: {
        labels: ["Total Price", "Total Quantity"],
        datasets: [{
          label: "Sales Statistics",
          data: ['.$totalPrice.', '.$totalQuantity.'],
          backgroundColor: [
            "rgba(54, 162, 235, 0.2)",
            "rgba(255, 99, 132, 0.2)"
          ],
          borderColor: [
            "rgba(54, 162, 235, 1)",
            "rgba(255, 99, 132, 1)"
          ],
          borderWidth: 1
        }]
      },
      options: {
        scales: {
          y: {
            beginAtZero: true
          }
        }
      }
    });
  </script>';
  ?>

</body>
</html> -->

