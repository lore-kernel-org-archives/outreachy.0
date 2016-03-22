X-GM-THRID: 6264893373939712000
X-Received: by 10.25.18.101 with SMTP id h98mr3568012lfi.0.1458659156001;
        Tue, 22 Mar 2016 08:05:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.18.133 with SMTP id 127ls869804wms.18.gmail; Tue, 22 Mar
 2016 08:05:55 -0700 (PDT)
X-Received: by 10.28.15.82 with SMTP id 79mr2247536wmp.3.1458659155409;
        Tue, 22 Mar 2016 08:05:55 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from mail-lb0-x243.google.com (mail-lb0-x243.google.com. [2a00:1450:4010:c04::243])
        by gmr-mx.google.com with ESMTPS id k2si1552774lbs.3.2016.03.22.08.05.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Mar 2016 08:05:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::243 as permitted sender) client-ip=2a00:1450:4010:c04::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::243 as permitted sender) smtp.mailfrom=sveta.orlik.code@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x243.google.com with SMTP id oa3so631217lbb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 22 Mar 2016 08:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/qO+xUTXOsvqm4/1CdTagR0xXrIU7QTO9JTC62Bk8Yk=;
        b=hG7tpKZ7LgeOQye4FJp7rOW6ahtEGYKxeFcLfFAOT8V0dVqFXjhI+9wtgnSC3T04lR
         e+FeEsUh62ZtrpAcXYSK0RnrawUDGQBpPzKojNbrws70797Xc40Hzq3Ni19lGoftt1dK
         Q7O/POqdK06Vxj13Fw0ZpG2O+uX+gLCxBK6eipo2TRMgTB0ZieGP39+IvpZV8/Srrp9m
         mOhauEUYiNgiQ6ySmtdHi5tVf/8HPESvoFHGXrqCkjGv/7M5Pq3DJRfdlDy/M9sN5r0A
         MUl23bw/KqDBzccrWOmKdRhz6xUs826/J5vyDh5nMybcHQsJR7yO47+G81ZWyWQurNdc
         Namw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/qO+xUTXOsvqm4/1CdTagR0xXrIU7QTO9JTC62Bk8Yk=;
        b=UsHKrJWtb/bXNnsYpVUtmhg2+BSYBvEjJogce04WWOBj7JZEC55/qT0OlDAdH8ur7V
         lNz3qrW/DZ5AQTZ7f6ShcQo7zwoGSi1GloTE/L+AjmKWCAfN1O3I8e4rOEpmivnjzp7g
         S0UYTaHH67RDpz3mdWC2Ljl2FVzmW18B4UXW5NiMUlOb5DmEfWm2dWhuQjlNBZu1ONVb
         atj3XXJrs4ig6orzXtw829S224LNwksS8dkPOWqQko4YyfuZ8G/kVzB8dGktO8A2RmaO
         yZrjoFMqxgzK9jsYK4Rw/0Q6PFtxL6dDlR5sgH0Ftlah52zf6h8WbjeHnYOaYoa3GQaB
         jNew==
X-Gm-Message-State: AD7BkJJBA0dSlsPgdQzOtYQk7wTt5QcykL2jdfo98xJOUP3WQjiEQvtg+5g986IGrZRFUQ==
X-Received: by 10.112.14.102 with SMTP id o6mr12972550lbc.87.1458659155267;
        Tue, 22 Mar 2016 08:05:55 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from pal-comp (broadband-46-242-29-57.nationalcablenetworks.ru. [46.242.29.57])
        by smtp.gmail.com with ESMTPSA id k137sm4119381lfg.16.2016.03.22.08.05.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 22 Mar 2016 08:05:54 -0700 (PDT)
Date: Tue, 22 Mar 2016 18:05:53 +0300
From: Svetlana Orlik <sveta.orlik.code@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/6] staging: iio: accel: Fix checkpatch warnings, unify
 style, improve readability
Message-ID: <cover.1458656755.git.sveta.orlik.code@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Some of the .h files got many 'line over 80 characters' checkpatch warnings
because of this commenting style:

#define ADIS16201_DIAG_STAT_ALARM2        BIT(9) /* Alarm 2 status: 1 = alarm active, 0 = alarm inactive */
#define ADIS16201_DIAG_STAT_ALARM1        BIT(8) /* Alarm 1 status: 1 = alarm active, 0 = alarm inactive */

Some other .h files have obviously been already corrected
by moving comment into line before #define, but interlacing
of comment and #defile lines with no space between them made
hard to read code like this:

/* Output, temperature */
#define ADIS16209_TEMP_OUT       0x0A
/* Output, x-axis inclination */
#define ADIS16209_XINCL_OUT      0x0C
/* Output, y-axis inclination */
#define ADIS16209_YINCL_OUT      0x0E
/* Output, +/-180 vertical rotational position */
#define ADIS16209_ROT_OUT        0x10
/* Calibration, x-axis acceleration offset null */
#define ADIS16209_XACCL_NULL     0x12


This patches move comments to line before #define where it is not done yet
(and where it is appropriate).
It helps to get rid of 'line over 80 characters' warnings and to unify code style.

Also, blank line is added after each #define-comment group and each
section title comment to improve readability of code.


Svetlana Orlik (6):
  staging: iio: accel: adis16204: Fix 'line over 80 characters' warning
  staging: iio: accel: adis16203: Fix 'line over 80 characters' warning
  staging: iio: accel: adis16201: Fix 'line over 80 characters' warning
  staging: iio: accel: adis16209: Improve readability
  staging: iio: accel: adis16220: Improve readability
  staging: iio: accel: adis16240: Improve readability

 drivers/staging/iio/accel/adis16201.h | 156 ++++++++++++++++++++++++---------
 drivers/staging/iio/accel/adis16203.h | 132 +++++++++++++++++++++-------
 drivers/staging/iio/accel/adis16204.h | 159 +++++++++++++++++++++++++---------
 drivers/staging/iio/accel/adis16209.h |  39 +++++++++
 drivers/staging/iio/accel/adis16220.h |  48 ++++++++++
 drivers/staging/iio/accel/adis16240.h |  50 +++++++++++
 6 files changed, 471 insertions(+), 113 deletions(-)

-- 
2.5.0


