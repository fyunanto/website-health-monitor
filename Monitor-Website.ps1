# =========================================================
# Website & SSL Availability Monitor for solagency.id
# Created for IT Operations Showcase
# =========================================================

$WebsiteUrl = "https://www.solagency.id"
$TimeoutMs  = 10000

Write-Host "--- Memulai Pemeriksaan Kesehatan Website ---" -ForegroundColor Cyan
Write-Host "Target: $WebsiteUrl" -ForegroundColor Yellow

try {
    # Mengukur waktu respon (Latency)
    $Stopwatch = [System.Diagnostics.Stopwatch]::StartNew()
    $Response  = Invoke-WebRequest -Uri $WebsiteUrl -Method Get -TimeoutSec ($TimeoutMs / 1000) -UseBasicParsing
    $Stopwatch.Stop()

    $StatusCode   = $Response.StatusCode
    $ResponseTime = $Stopwatch.ElapsedMilliseconds

    if ($StatusCode -eq 200) {
        Write-Host "[SUCCESS] Website UP (Status: $StatusCode)" -ForegroundColor Green
        Write-Host "[LATENCY] Waktu Respon: $ResponseTime ms" -ForegroundColor Green
    } else {
        Write-Host "[WARNING] Website Merespon dengan Status: $StatusCode" -ForegroundColor Yellow
    }
}
catch {
    Write-Host "[ALERT] Website DOWN atau Tidak Dapat Diakses!" -ForegroundColor Red
    Write-Host "Detail Error: $_" -ForegroundColor Red
}

Write-Host "--- Pemeriksaan Selesai ---" -ForegroundColor Cyan