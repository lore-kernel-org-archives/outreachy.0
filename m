X-GM-THRID: 6392248705577123840
X-Received: by 10.25.56.6 with SMTP id f6mr2053699lfa.4.1488481948852;
        Thu, 02 Mar 2017 11:12:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.93 with SMTP id t29ls786881ljd.29.gmail; Thu, 02 Mar
 2017 11:12:28 -0800 (PST)
X-Received: by 10.25.223.67 with SMTP id q3mr1888251lfj.1.1488481948328;
        Thu, 02 Mar 2017 11:12:28 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id i76si1816284wmh.1.2017.03.02.11.12.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 11:12:28 -0800 (PST)
Received-SPF: neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id 8AEF44062D;
	Thu,  2 Mar 2017 19:12:27 +0000 (GMT)
Subject: Re: [PATCH v3] staging: iio: adis16201: Move header file content to
 source file
To: simran singhal <singhalsimran0@gmail.com>, lars@metafoo.de
References: <20170228194935.GA30367@singhal-Inspiron-5558>
Cc: Michael.Hennerich@analog.com, knaack.h@gmx.de, pmeerw@pmeerw.net,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 outreachy-kernel@googlegroups.com
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <ef760216-ec45-5d58-325b-da00f7b99c61@kernel.org>
Date: Thu, 2 Mar 2017 19:12:27 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170228194935.GA30367@singhal-Inspiron-5558>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 28/02/17 19:49, simran singhal wrote:
> The contents of the header file are used only by this single
> source file. Move content into .c and remove .h.
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
Hi Simran,

Good follow up but as I'd already applied it I made the mods directly to
the original patch. Please check the new contents of the testing branch
of iio.git to make sure I didn't mess it up!

Thanks,

Jonathan
> ---
>  v3:
>    -Removing endif as it is not needed
>    -Changing subject  
> 
>  drivers/staging/iio/accel/adis16201.h      | 144 -----------------------------
>  drivers/staging/iio/accel/adis16201_core.c | 140 +++++++++++++++++++++++++++-
>  2 files changed, 139 insertions(+), 145 deletions(-)
>  delete mode 100644 drivers/staging/iio/accel/adis16201.h
> 
> diff --git a/drivers/staging/iio/accel/adis16201.h b/drivers/staging/iio/accel/adis16201.h
> deleted file mode 100644
> index 64844ad..0000000
> --- a/drivers/staging/iio/accel/adis16201.h
> +++ /dev/null
> @@ -1,144 +0,0 @@
> -#ifndef SPI_ADIS16201_H_
> -#define SPI_ADIS16201_H_
> -
> -#define ADIS16201_STARTUP_DELAY	220 /* ms */
> -
> -/* Flash memory write count */
> -#define ADIS16201_FLASH_CNT      0x00
> -
> -/* Output, power supply */
> -#define ADIS16201_SUPPLY_OUT     0x02
> -
> -/* Output, x-axis accelerometer */
> -#define ADIS16201_XACCL_OUT      0x04
> -
> -/* Output, y-axis accelerometer */
> -#define ADIS16201_YACCL_OUT      0x06
> -
> -/* Output, auxiliary ADC input */
> -#define ADIS16201_AUX_ADC        0x08
> -
> -/* Output, temperature */
> -#define ADIS16201_TEMP_OUT       0x0A
> -
> -/* Output, x-axis inclination */
> -#define ADIS16201_XINCL_OUT      0x0C
> -
> -/* Output, y-axis inclination */
> -#define ADIS16201_YINCL_OUT      0x0E
> -
> -/* Calibration, x-axis acceleration offset */
> -#define ADIS16201_XACCL_OFFS     0x10
> -
> -/* Calibration, y-axis acceleration offset */
> -#define ADIS16201_YACCL_OFFS     0x12
> -
> -/* x-axis acceleration scale factor */
> -#define ADIS16201_XACCL_SCALE    0x14
> -
> -/* y-axis acceleration scale factor */
> -#define ADIS16201_YACCL_SCALE    0x16
> -
> -/* Calibration, x-axis inclination offset */
> -#define ADIS16201_XINCL_OFFS     0x18
> -
> -/* Calibration, y-axis inclination offset */
> -#define ADIS16201_YINCL_OFFS     0x1A
> -
> -/* x-axis inclination scale factor */
> -#define ADIS16201_XINCL_SCALE    0x1C
> -
> -/* y-axis inclination scale factor */
> -#define ADIS16201_YINCL_SCALE    0x1E
> -
> -/* Alarm 1 amplitude threshold */
> -#define ADIS16201_ALM_MAG1       0x20
> -
> -/* Alarm 2 amplitude threshold */
> -#define ADIS16201_ALM_MAG2       0x22
> -
> -/* Alarm 1, sample period */
> -#define ADIS16201_ALM_SMPL1      0x24
> -
> -/* Alarm 2, sample period */
> -#define ADIS16201_ALM_SMPL2      0x26
> -
> -/* Alarm control */
> -#define ADIS16201_ALM_CTRL       0x28
> -
> -/* Auxiliary DAC data */
> -#define ADIS16201_AUX_DAC        0x30
> -
> -/* General-purpose digital input/output control */
> -#define ADIS16201_GPIO_CTRL      0x32
> -
> -/* Miscellaneous control */
> -#define ADIS16201_MSC_CTRL       0x34
> -
> -/* Internal sample period (rate) control */
> -#define ADIS16201_SMPL_PRD       0x36
> -
> -/* Operation, filter configuration */
> -#define ADIS16201_AVG_CNT        0x38
> -
> -/* Operation, sleep mode control */
> -#define ADIS16201_SLP_CNT        0x3A
> -
> -/* Diagnostics, system status register */
> -#define ADIS16201_DIAG_STAT      0x3C
> -
> -/* Operation, system command register */
> -#define ADIS16201_GLOB_CMD       0x3E
> -
> -/* MSC_CTRL */
> -
> -/* Self-test enable */
> -#define ADIS16201_MSC_CTRL_SELF_TEST_EN	        BIT(8)
> -
> -/* Data-ready enable: 1 = enabled, 0 = disabled */
> -#define ADIS16201_MSC_CTRL_DATA_RDY_EN	        BIT(2)
> -
> -/* Data-ready polarity: 1 = active high, 0 = active low */
> -#define ADIS16201_MSC_CTRL_ACTIVE_HIGH	        BIT(1)
> -
> -/* Data-ready line selection: 1 = DIO1, 0 = DIO0 */
> -#define ADIS16201_MSC_CTRL_DATA_RDY_DIO1	BIT(0)
> -
> -/* DIAG_STAT */
> -
> -/* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
> -#define ADIS16201_DIAG_STAT_ALARM2        BIT(9)
> -
> -/* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
> -#define ADIS16201_DIAG_STAT_ALARM1        BIT(8)
> -
> -/* SPI communications failure */
> -#define ADIS16201_DIAG_STAT_SPI_FAIL_BIT   3
> -
> -/* Flash update failure */
> -#define ADIS16201_DIAG_STAT_FLASH_UPT_BIT  2
> -
> -/* Power supply above 3.625 V */
> -#define ADIS16201_DIAG_STAT_POWER_HIGH_BIT 1
> -
> -/* Power supply below 3.15 V */
> -#define ADIS16201_DIAG_STAT_POWER_LOW_BIT  0
> -
> -/* GLOB_CMD */
> -
> -#define ADIS16201_GLOB_CMD_SW_RESET	BIT(7)
> -#define ADIS16201_GLOB_CMD_FACTORY_CAL	BIT(1)
> -
> -#define ADIS16201_ERROR_ACTIVE          BIT(14)
> -
> -enum adis16201_scan {
> -	ADIS16201_SCAN_ACC_X,
> -	ADIS16201_SCAN_ACC_Y,
> -	ADIS16201_SCAN_INCLI_X,
> -	ADIS16201_SCAN_INCLI_Y,
> -	ADIS16201_SCAN_SUPPLY,
> -	ADIS16201_SCAN_AUX_ADC,
> -	ADIS16201_SCAN_TEMP,
> -};
> -
> -#endif /* SPI_ADIS16201_H_ */
> diff --git a/drivers/staging/iio/accel/adis16201_core.c b/drivers/staging/iio/accel/adis16201_core.c
> index 7963d4a..d6c8658 100644
> --- a/drivers/staging/iio/accel/adis16201_core.c
> +++ b/drivers/staging/iio/accel/adis16201_core.c
> @@ -20,7 +20,145 @@
>  #include <linux/iio/buffer.h>
>  #include <linux/iio/imu/adis.h>
>  
> -#include "adis16201.h"
> +#define ADIS16201_STARTUP_DELAY	220 /* ms */
> +
> +/* Flash memory write count */
> +#define ADIS16201_FLASH_CNT      0x00
> +
> +/* Output, power supply */
> +#define ADIS16201_SUPPLY_OUT     0x02
> +
> +/* Output, x-axis accelerometer */
> +#define ADIS16201_XACCL_OUT      0x04
> +
> +/* Output, y-axis accelerometer */
> +#define ADIS16201_YACCL_OUT      0x06
> +
> +/* Output, auxiliary ADC input */
> +#define ADIS16201_AUX_ADC        0x08
> +
> +/* Output, temperature */
> +#define ADIS16201_TEMP_OUT       0x0A
> +
> +/* Output, x-axis inclination */
> +#define ADIS16201_XINCL_OUT      0x0C
> +
> +/* Output, y-axis inclination */
> +#define ADIS16201_YINCL_OUT      0x0E
> +
> +/* Calibration, x-axis acceleration offset */
> +#define ADIS16201_XACCL_OFFS     0x10
> +
> +/* Calibration, y-axis acceleration offset */
> +#define ADIS16201_YACCL_OFFS     0x12
> +
> +/* x-axis acceleration scale factor */
> +#define ADIS16201_XACCL_SCALE    0x14
> +
> +/* y-axis acceleration scale factor */
> +#define ADIS16201_YACCL_SCALE    0x16
> +
> +/* Calibration, x-axis inclination offset */
> +#define ADIS16201_XINCL_OFFS     0x18
> +
> +/* Calibration, y-axis inclination offset */
> +#define ADIS16201_YINCL_OFFS     0x1A
> +
> +/* x-axis inclination scale factor */
> +#define ADIS16201_XINCL_SCALE    0x1C
> +
> +/* y-axis inclination scale factor */
> +#define ADIS16201_YINCL_SCALE    0x1E
> +
> +/* Alarm 1 amplitude threshold */
> +#define ADIS16201_ALM_MAG1       0x20
> +
> +/* Alarm 2 amplitude threshold */
> +#define ADIS16201_ALM_MAG2       0x22
> +
> +/* Alarm 1, sample period */
> +#define ADIS16201_ALM_SMPL1      0x24
> +
> +/* Alarm 2, sample period */
> +#define ADIS16201_ALM_SMPL2      0x26
> +
> +/* Alarm control */
> +#define ADIS16201_ALM_CTRL       0x28
> +
> +/* Auxiliary DAC data */
> +#define ADIS16201_AUX_DAC        0x30
> +
> +/* General-purpose digital input/output control */
> +#define ADIS16201_GPIO_CTRL      0x32
> +
> +/* Miscellaneous control */
> +#define ADIS16201_MSC_CTRL       0x34
> +
> +/* Internal sample period (rate) control */
> +#define ADIS16201_SMPL_PRD       0x36
> +
> +/* Operation, filter configuration */
> +#define ADIS16201_AVG_CNT        0x38
> +
> +/* Operation, sleep mode control */
> +#define ADIS16201_SLP_CNT        0x3A
> +
> +/* Diagnostics, system status register */
> +#define ADIS16201_DIAG_STAT      0x3C
> +
> +/* Operation, system command register */
> +#define ADIS16201_GLOB_CMD       0x3E
> +
> +/* MSC_CTRL */
> +
> +/* Self-test enable */
> +#define ADIS16201_MSC_CTRL_SELF_TEST_EN	        BIT(8)
> +
> +/* Data-ready enable: 1 = enabled, 0 = disabled */
> +#define ADIS16201_MSC_CTRL_DATA_RDY_EN	        BIT(2)
> +
> +/* Data-ready polarity: 1 = active high, 0 = active low */
> +#define ADIS16201_MSC_CTRL_ACTIVE_HIGH	        BIT(1)
> +
> +/* Data-ready line selection: 1 = DIO1, 0 = DIO0 */
> +#define ADIS16201_MSC_CTRL_DATA_RDY_DIO1	BIT(0)
> +
> +/* DIAG_STAT */
> +
> +/* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
> +#define ADIS16201_DIAG_STAT_ALARM2        BIT(9)
> +
> +/* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
> +#define ADIS16201_DIAG_STAT_ALARM1        BIT(8)
> +
> +/* SPI communications failure */
> +#define ADIS16201_DIAG_STAT_SPI_FAIL_BIT   3
> +
> +/* Flash update failure */
> +#define ADIS16201_DIAG_STAT_FLASH_UPT_BIT  2
> +
> +/* Power supply above 3.625 V */
> +#define ADIS16201_DIAG_STAT_POWER_HIGH_BIT 1
> +
> +/* Power supply below 3.15 V */
> +#define ADIS16201_DIAG_STAT_POWER_LOW_BIT  0
> +
> +/* GLOB_CMD */
> +
> +#define ADIS16201_GLOB_CMD_SW_RESET	BIT(7)
> +#define ADIS16201_GLOB_CMD_FACTORY_CAL	BIT(1)
> +
> +#define ADIS16201_ERROR_ACTIVE          BIT(14)
> +
> +enum adis16201_scan {
> +	ADIS16201_SCAN_ACC_X,
> +	ADIS16201_SCAN_ACC_Y,
> +	ADIS16201_SCAN_INCLI_X,
> +	ADIS16201_SCAN_INCLI_Y,
> +	ADIS16201_SCAN_SUPPLY,
> +	ADIS16201_SCAN_AUX_ADC,
> +	ADIS16201_SCAN_TEMP,
> +};
>  
>  static const u8 adis16201_addresses[] = {
>  	[ADIS16201_SCAN_ACC_X] = ADIS16201_XACCL_OFFS,
> 


