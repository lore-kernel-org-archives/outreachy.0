X-GM-THRID: 6393639502105018368
X-Received: by 10.46.21.91 with SMTP id 27mr1250694ljv.0.1488645480206;
        Sat, 04 Mar 2017 08:38:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.83 with SMTP id v19ls1253187ljd.15.gmail; Sat, 04 Mar
 2017 08:37:59 -0800 (PST)
X-Received: by 10.46.83.7 with SMTP id h7mr1345529ljb.24.1488645479577;
        Sat, 04 Mar 2017 08:37:59 -0800 (PST)
Return-Path: <jic23@kernel.org>
Received: from saturn.retrosnub.co.uk (saturn.retrosnub.co.uk. [2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466])
        by gmr-mx.google.com with ESMTPS id f7si513619wmg.3.2017.03.04.08.37.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 Mar 2017 08:37:59 -0800 (PST)
Received-SPF: neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) client-ip=2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 2a01:8000:1ffa:f003:bc9d:1dff:fe9b:7466 is neither permitted nor denied by best guess record for domain of jic23@kernel.org) smtp.mailfrom=jic23@kernel.org
Received: from localhost.localdomain (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net [81.96.234.148])
	by saturn.retrosnub.co.uk (Postfix; Retrosnub mail submission) with ESMTPSA id CDB5740619;
	Sat,  4 Mar 2017 16:37:58 +0000 (GMT)
Subject: Re: [PATCH 4/4] staging: iio: adis16240: Move contents of the header
 to the source file
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, knaack.h@gmx.de, pmeerw@pmeerw.net,
 gregkh@linuxfoundation.org
References: <cover.1488634510.git.narcisaanamaria12@gmail.com>
 <9eccea6d8e170545a40e4c1a106049477dabed38.1488634510.git.narcisaanamaria12@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
From: Jonathan Cameron <jic23@kernel.org>
Message-ID: <fabe92ad-c58a-9ee3-cff5-60c7f321947d@kernel.org>
Date: Sat, 4 Mar 2017 16:37:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <9eccea6d8e170545a40e4c1a106049477dabed38.1488634510.git.narcisaanamaria12@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 04/03/17 13:47, Narcisa Ana Maria Vasile wrote:
> The contents of the header file are used only by this single
> source file. Move content into .c file and remove header.
> 
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Another good patch.

Applied to the togreg branch of iio.git and pushed out as testing for
the autobuilders to play with it.

Thanks,

Jonathan
> ---
>  drivers/staging/iio/accel/adis16240.h      | 179 -----------------------------
>  drivers/staging/iio/accel/adis16240_core.c | 175 +++++++++++++++++++++++++++-
>  2 files changed, 174 insertions(+), 180 deletions(-)
>  delete mode 100644 drivers/staging/iio/accel/adis16240.h
> 
> diff --git a/drivers/staging/iio/accel/adis16240.h b/drivers/staging/iio/accel/adis16240.h
> deleted file mode 100644
> index b2cb37b..0000000
> --- a/drivers/staging/iio/accel/adis16240.h
> +++ /dev/null
> @@ -1,179 +0,0 @@
> -#ifndef SPI_ADIS16240_H_
> -#define SPI_ADIS16240_H_
> -
> -#define ADIS16240_STARTUP_DELAY	220 /* ms */
> -
> -/* Flash memory write count */
> -#define ADIS16240_FLASH_CNT      0x00
> -
> -/* Output, power supply */
> -#define ADIS16240_SUPPLY_OUT     0x02
> -
> -/* Output, x-axis accelerometer */
> -#define ADIS16240_XACCL_OUT      0x04
> -
> -/* Output, y-axis accelerometer */
> -#define ADIS16240_YACCL_OUT      0x06
> -
> -/* Output, z-axis accelerometer */
> -#define ADIS16240_ZACCL_OUT      0x08
> -
> -/* Output, auxiliary ADC input */
> -#define ADIS16240_AUX_ADC        0x0A
> -
> -/* Output, temperature */
> -#define ADIS16240_TEMP_OUT       0x0C
> -
> -/* Output, x-axis acceleration peak */
> -#define ADIS16240_XPEAK_OUT      0x0E
> -
> -/* Output, y-axis acceleration peak */
> -#define ADIS16240_YPEAK_OUT      0x10
> -
> -/* Output, z-axis acceleration peak */
> -#define ADIS16240_ZPEAK_OUT      0x12
> -
> -/* Output, sum-of-squares acceleration peak */
> -#define ADIS16240_XYZPEAK_OUT    0x14
> -
> -/* Output, Capture Buffer 1, X and Y acceleration */
> -#define ADIS16240_CAPT_BUF1      0x16
> -
> -/* Output, Capture Buffer 2, Z acceleration */
> -#define ADIS16240_CAPT_BUF2      0x18
> -
> -/* Diagnostic, error flags */
> -#define ADIS16240_DIAG_STAT      0x1A
> -
> -/* Diagnostic, event counter */
> -#define ADIS16240_EVNT_CNTR      0x1C
> -
> -/* Diagnostic, check sum value from firmware test */
> -#define ADIS16240_CHK_SUM        0x1E
> -
> -/* Calibration, x-axis acceleration offset adjustment */
> -#define ADIS16240_XACCL_OFF      0x20
> -
> -/* Calibration, y-axis acceleration offset adjustment */
> -#define ADIS16240_YACCL_OFF      0x22
> -
> -/* Calibration, z-axis acceleration offset adjustment */
> -#define ADIS16240_ZACCL_OFF      0x24
> -
> -/* Clock, hour and minute */
> -#define ADIS16240_CLK_TIME       0x2E
> -
> -/* Clock, month and day */
> -#define ADIS16240_CLK_DATE       0x30
> -
> -/* Clock, year */
> -#define ADIS16240_CLK_YEAR       0x32
> -
> -/* Wake-up setting, hour and minute */
> -#define ADIS16240_WAKE_TIME      0x34
> -
> -/* Wake-up setting, month and day */
> -#define ADIS16240_WAKE_DATE      0x36
> -
> -/* Alarm 1 amplitude threshold */
> -#define ADIS16240_ALM_MAG1       0x38
> -
> -/* Alarm 2 amplitude threshold */
> -#define ADIS16240_ALM_MAG2       0x3A
> -
> -/* Alarm control */
> -#define ADIS16240_ALM_CTRL       0x3C
> -
> -/* Capture, external trigger control */
> -#define ADIS16240_XTRIG_CTRL     0x3E
> -
> -/* Capture, address pointer */
> -#define ADIS16240_CAPT_PNTR      0x40
> -
> -/* Capture, configuration and control */
> -#define ADIS16240_CAPT_CTRL      0x42
> -
> -/* General-purpose digital input/output control */
> -#define ADIS16240_GPIO_CTRL      0x44
> -
> -/* Miscellaneous control */
> -#define ADIS16240_MSC_CTRL       0x46
> -
> -/* Internal sample period (rate) control */
> -#define ADIS16240_SMPL_PRD       0x48
> -
> -/* System command */
> -#define ADIS16240_GLOB_CMD       0x4A
> -
> -/* MSC_CTRL */
> -
> -/* Enables sum-of-squares output (XYZPEAK_OUT) */
> -#define ADIS16240_MSC_CTRL_XYZPEAK_OUT_EN	BIT(15)
> -
> -/* Enables peak tracking output (XPEAK_OUT, YPEAK_OUT, and ZPEAK_OUT) */
> -#define ADIS16240_MSC_CTRL_X_Y_ZPEAK_OUT_EN	BIT(14)
> -
> -/* Self-test enable: 1 = apply electrostatic force, 0 = disabled */
> -#define ADIS16240_MSC_CTRL_SELF_TEST_EN	        BIT(8)
> -
> -/* Data-ready enable: 1 = enabled, 0 = disabled */
> -#define ADIS16240_MSC_CTRL_DATA_RDY_EN	        BIT(2)
> -
> -/* Data-ready polarity: 1 = active high, 0 = active low */
> -#define ADIS16240_MSC_CTRL_ACTIVE_HIGH	        BIT(1)
> -
> -/* Data-ready line selection: 1 = DIO2, 0 = DIO1 */
> -#define ADIS16240_MSC_CTRL_DATA_RDY_DIO2	BIT(0)
> -
> -/* DIAG_STAT */
> -
> -/* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
> -#define ADIS16240_DIAG_STAT_ALARM2      BIT(9)
> -
> -/* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
> -#define ADIS16240_DIAG_STAT_ALARM1      BIT(8)
> -
> -/* Capture buffer full: 1 = capture buffer is full */
> -#define ADIS16240_DIAG_STAT_CPT_BUF_FUL BIT(7)
> -
> -/* Flash test, checksum flag: 1 = mismatch, 0 = match */
> -#define ADIS16240_DIAG_STAT_CHKSUM      BIT(6)
> -
> -/* Power-on, self-test flag: 1 = failure, 0 = pass */
> -#define ADIS16240_DIAG_STAT_PWRON_FAIL_BIT  5
> -
> -/* Power-on self-test: 1 = in-progress, 0 = complete */
> -#define ADIS16240_DIAG_STAT_PWRON_BUSY  BIT(4)
> -
> -/* SPI communications failure */
> -#define ADIS16240_DIAG_STAT_SPI_FAIL_BIT	3
> -
> -/* Flash update failure */
> -#define ADIS16240_DIAG_STAT_FLASH_UPT_BIT	2
> -
> -/* Power supply above 3.625 V */
> -#define ADIS16240_DIAG_STAT_POWER_HIGH_BIT	1
> -
> - /* Power supply below 3.15 V */
> -#define ADIS16240_DIAG_STAT_POWER_LOW_BIT	0
> -
> -/* GLOB_CMD */
> -
> -#define ADIS16240_GLOB_CMD_RESUME	BIT(8)
> -#define ADIS16240_GLOB_CMD_SW_RESET	BIT(7)
> -#define ADIS16240_GLOB_CMD_STANDBY	BIT(2)
> -
> -#define ADIS16240_ERROR_ACTIVE          BIT(14)
> -
> -/* At the moment triggers are only used for ring buffer
> - * filling. This may change!
> - */
> -
> -#define ADIS16240_SCAN_ACC_X	0
> -#define ADIS16240_SCAN_ACC_Y	1
> -#define ADIS16240_SCAN_ACC_Z	2
> -#define ADIS16240_SCAN_SUPPLY	3
> -#define ADIS16240_SCAN_AUX_ADC	4
> -#define ADIS16240_SCAN_TEMP	5
> -
> -#endif /* SPI_ADIS16240_H_ */
> diff --git a/drivers/staging/iio/accel/adis16240_core.c b/drivers/staging/iio/accel/adis16240_core.c
> index d5b99e6..9690e46 100644
> --- a/drivers/staging/iio/accel/adis16240_core.c
> +++ b/drivers/staging/iio/accel/adis16240_core.c
> @@ -24,7 +24,180 @@
>  #include <linux/iio/buffer.h>
>  #include <linux/iio/imu/adis.h>
>  
> -#include "adis16240.h"
> +#define ADIS16240_STARTUP_DELAY	220 /* ms */
> +
> +/* Flash memory write count */
> +#define ADIS16240_FLASH_CNT      0x00
> +
> +/* Output, power supply */
> +#define ADIS16240_SUPPLY_OUT     0x02
> +
> +/* Output, x-axis accelerometer */
> +#define ADIS16240_XACCL_OUT      0x04
> +
> +/* Output, y-axis accelerometer */
> +#define ADIS16240_YACCL_OUT      0x06
> +
> +/* Output, z-axis accelerometer */
> +#define ADIS16240_ZACCL_OUT      0x08
> +
> +/* Output, auxiliary ADC input */
> +#define ADIS16240_AUX_ADC        0x0A
> +
> +/* Output, temperature */
> +#define ADIS16240_TEMP_OUT       0x0C
> +
> +/* Output, x-axis acceleration peak */
> +#define ADIS16240_XPEAK_OUT      0x0E
> +
> +/* Output, y-axis acceleration peak */
> +#define ADIS16240_YPEAK_OUT      0x10
> +
> +/* Output, z-axis acceleration peak */
> +#define ADIS16240_ZPEAK_OUT      0x12
> +
> +/* Output, sum-of-squares acceleration peak */
> +#define ADIS16240_XYZPEAK_OUT    0x14
> +
> +/* Output, Capture Buffer 1, X and Y acceleration */
> +#define ADIS16240_CAPT_BUF1      0x16
> +
> +/* Output, Capture Buffer 2, Z acceleration */
> +#define ADIS16240_CAPT_BUF2      0x18
> +
> +/* Diagnostic, error flags */
> +#define ADIS16240_DIAG_STAT      0x1A
> +
> +/* Diagnostic, event counter */
> +#define ADIS16240_EVNT_CNTR      0x1C
> +
> +/* Diagnostic, check sum value from firmware test */
> +#define ADIS16240_CHK_SUM        0x1E
> +
> +/* Calibration, x-axis acceleration offset adjustment */
> +#define ADIS16240_XACCL_OFF      0x20
> +
> +/* Calibration, y-axis acceleration offset adjustment */
> +#define ADIS16240_YACCL_OFF      0x22
> +
> +/* Calibration, z-axis acceleration offset adjustment */
> +#define ADIS16240_ZACCL_OFF      0x24
> +
> +/* Clock, hour and minute */
> +#define ADIS16240_CLK_TIME       0x2E
> +
> +/* Clock, month and day */
> +#define ADIS16240_CLK_DATE       0x30
> +
> +/* Clock, year */
> +#define ADIS16240_CLK_YEAR       0x32
> +
> +/* Wake-up setting, hour and minute */
> +#define ADIS16240_WAKE_TIME      0x34
> +
> +/* Wake-up setting, month and day */
> +#define ADIS16240_WAKE_DATE      0x36
> +
> +/* Alarm 1 amplitude threshold */
> +#define ADIS16240_ALM_MAG1       0x38
> +
> +/* Alarm 2 amplitude threshold */
> +#define ADIS16240_ALM_MAG2       0x3A
> +
> +/* Alarm control */
> +#define ADIS16240_ALM_CTRL       0x3C
> +
> +/* Capture, external trigger control */
> +#define ADIS16240_XTRIG_CTRL     0x3E
> +
> +/* Capture, address pointer */
> +#define ADIS16240_CAPT_PNTR      0x40
> +
> +/* Capture, configuration and control */
> +#define ADIS16240_CAPT_CTRL      0x42
> +
> +/* General-purpose digital input/output control */
> +#define ADIS16240_GPIO_CTRL      0x44
> +
> +/* Miscellaneous control */
> +#define ADIS16240_MSC_CTRL       0x46
> +
> +/* Internal sample period (rate) control */
> +#define ADIS16240_SMPL_PRD       0x48
> +
> +/* System command */
> +#define ADIS16240_GLOB_CMD       0x4A
> +
> +/* MSC_CTRL */
> +
> +/* Enables sum-of-squares output (XYZPEAK_OUT) */
> +#define ADIS16240_MSC_CTRL_XYZPEAK_OUT_EN	BIT(15)
> +
> +/* Enables peak tracking output (XPEAK_OUT, YPEAK_OUT, and ZPEAK_OUT) */
> +#define ADIS16240_MSC_CTRL_X_Y_ZPEAK_OUT_EN	BIT(14)
> +
> +/* Self-test enable: 1 = apply electrostatic force, 0 = disabled */
> +#define ADIS16240_MSC_CTRL_SELF_TEST_EN	        BIT(8)
> +
> +/* Data-ready enable: 1 = enabled, 0 = disabled */
> +#define ADIS16240_MSC_CTRL_DATA_RDY_EN	        BIT(2)
> +
> +/* Data-ready polarity: 1 = active high, 0 = active low */
> +#define ADIS16240_MSC_CTRL_ACTIVE_HIGH	        BIT(1)
> +
> +/* Data-ready line selection: 1 = DIO2, 0 = DIO1 */
> +#define ADIS16240_MSC_CTRL_DATA_RDY_DIO2	BIT(0)
> +
> +/* DIAG_STAT */
> +
> +/* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
> +#define ADIS16240_DIAG_STAT_ALARM2      BIT(9)
> +
> +/* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */
> +#define ADIS16240_DIAG_STAT_ALARM1      BIT(8)
> +
> +/* Capture buffer full: 1 = capture buffer is full */
> +#define ADIS16240_DIAG_STAT_CPT_BUF_FUL BIT(7)
> +
> +/* Flash test, checksum flag: 1 = mismatch, 0 = match */
> +#define ADIS16240_DIAG_STAT_CHKSUM      BIT(6)
> +
> +/* Power-on, self-test flag: 1 = failure, 0 = pass */
> +#define ADIS16240_DIAG_STAT_PWRON_FAIL_BIT  5
> +
> +/* Power-on self-test: 1 = in-progress, 0 = complete */
> +#define ADIS16240_DIAG_STAT_PWRON_BUSY  BIT(4)
> +
> +/* SPI communications failure */
> +#define ADIS16240_DIAG_STAT_SPI_FAIL_BIT	3
> +
> +/* Flash update failure */
> +#define ADIS16240_DIAG_STAT_FLASH_UPT_BIT	2
> +
> +/* Power supply above 3.625 V */
> +#define ADIS16240_DIAG_STAT_POWER_HIGH_BIT	1
> +
> + /* Power supply below 3.15 V */
> +#define ADIS16240_DIAG_STAT_POWER_LOW_BIT	0
> +
> +/* GLOB_CMD */
> +
> +#define ADIS16240_GLOB_CMD_RESUME	BIT(8)
> +#define ADIS16240_GLOB_CMD_SW_RESET	BIT(7)
> +#define ADIS16240_GLOB_CMD_STANDBY	BIT(2)
> +
> +#define ADIS16240_ERROR_ACTIVE          BIT(14)
> +
> +/* At the moment triggers are only used for ring buffer
> + * filling. This may change!
> + */
> +
> +#define ADIS16240_SCAN_ACC_X	0
> +#define ADIS16240_SCAN_ACC_Y	1
> +#define ADIS16240_SCAN_ACC_Z	2
> +#define ADIS16240_SCAN_SUPPLY	3
> +#define ADIS16240_SCAN_AUX_ADC	4
> +#define ADIS16240_SCAN_TEMP	5
>  
>  static ssize_t adis16240_spi_read_signed(struct device *dev,
>  					 struct device_attribute *attr,
> 


