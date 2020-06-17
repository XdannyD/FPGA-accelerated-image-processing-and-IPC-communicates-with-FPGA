本專案在做IPC和FPGA的溝通，再由FPGA進行影像加速，達到軟硬體協同的目標。

需求：
  功能：
    讓IPC透過 PCIe → AXI → APB 傳輸影像給FPGA，FPGA進行image processing中的Sobel，再將結果回傳給IPC。
  介面：
    讓IPC用CMD下命令給作業系統

  效能：
    底標：1s處理完一張1920*1080的灰階影像
    頂標：30ms處理完一張1920*1080的灰階影像

  限制：
    SOC7666

分析：
  FPGA accelerated image processing and IPC communicates with FPGA
    1. FPGA accelerated image processing
      1.1 buffer
      1.2 sobel
      1.3 Block RAM
    2. IPC communicates with FPGA
      2.1 S_FSM
      2.2 AXI4
      2.3 DDR4
      2.4 APB
      2.5 PCIe
      
    
  
