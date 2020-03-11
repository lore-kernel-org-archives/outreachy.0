X-GM-THRID: 6803023005726277632
X-Received: by 2002:aed:2591:: with SMTP id x17mr3989058qtc.380.1583952225261;
        Wed, 11 Mar 2020 11:43:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:7358:: with SMTP id q24ls1242535qtp.4.gmail; Wed, 11 Mar
 2020 11:43:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsDOhnCFVOIlEz8ONyhdPKQGuCc9NZuu23jMqDXHWweMqUP9cmu27856u0TKkx7j1irzzHB
X-Received: by 2002:ac8:7592:: with SMTP id s18mr3898334qtq.8.1583952223860;
        Wed, 11 Mar 2020 11:43:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583952223; cv=none;
        d=google.com; s=arc-20160816;
        b=MHYncb2v874/YAkPoMjTFS97nvL9QE7OUPEM5SgF59MX+ELmgmUMWXipFcjtV8VJTV
         doze2yywzGzPTlN8zHOuvevn/GP1a5rb3PiLljdTDiWcTizRSuxdmzicJvJHr1T/W/R5
         R3leiVcAifzHLryIet0AB34FyCnflGRYssVbqIc3YeOEcCXHj+O3cyqPOYsjqwEBL7bC
         5f4lGZgdE9ofG6p6Jk+g5saaJuiE8bl+0WeX5iBbm2ogLQk6I0zq8wPOLq23POggDJpT
         ugmnzZcB1UL4Iejvi1dcZXc+Mr5Z80/o7wVxzUEozM9EUo9OJPp/McdL5Z1a8p4E3lGU
         CjeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=cHooy9EWhItv/c01cTKQFVJ98k91LnqmXgEWHnsKhrE=;
        b=dmQYRQDP8KlNG1WMzpIn0JB9LtjL1qD+kRZdTwrCto77YFXIBMgvp9TKmi3U2jJkLN
         /DbAQ0M94YDq3dKhqbXUn1uZ5RVacr+pBAj8yJvBxFbRn2FkhXO2M4N2LjG4bcXSjip+
         YvDwt5Xu1rSMR7MFuQWpOve11ucoa5MTu2uZzUmMFlgcZWPJ7zBVqm+0jM78CyAdswJB
         qU57BnrO2KjQhaHgAJa2JCPOxeU4bcJRNgwHyB4tf2fgw/T8C1HmbS/kOmTUSZLxNKf0
         I+/xHH1Sbvd0GmuI72c81spfvGISjTX1xDiIQaWgMx/THJtxiVIeuVNxBja/M1D2JDzs
         K4pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=xehZoYis;
       spf=neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id y5si149217qkl.6.2020.03.11.11.43.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 11:43:42 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=xehZoYis;
       spf=neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pj1-x1043.google.com with SMTP id d8so1444522pje.4
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 11:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=cHooy9EWhItv/c01cTKQFVJ98k91LnqmXgEWHnsKhrE=;
        b=xehZoYisrr/VSvbcv/ck5GXQbNxah4CyI/GJCLJpKuPEDF8bm4DS4tKUVbvqBrpBCc
         1o/Ut6zAomY/rjZcZfZKyobTi/zSgfdV6RfiCvbMipVMTLP8wzCQWvJymIb97cZ8pdYO
         moYNpBIPrVwNr+AbGqj+fU+r0IGjQEVHSt7KAgpO9oGUy8J2ms4Zp5gItKEfXfIKszr5
         pGtuYZ8MqLA/slo+ekBLNdptdaCaZTB/2NkrmVGRZ0cuMs2uWAT2weivAGe865cPaqFA
         ks86x4U5pj5Ls+FCoPXBc9lsmdVNkmM64M6GmgRZPLG9YbRxng/loE9RbVYEpCz2bKNy
         vlnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cHooy9EWhItv/c01cTKQFVJ98k91LnqmXgEWHnsKhrE=;
        b=heCiegPJ4Nm2Z9xmraOcxuW0GMQhBnM2O+AE0oIaRfey+qV7gF3JawZ5j7veZOPB/Z
         bFzap97WyCi4cJZqyTQziIOqJUEVfF0PQ2/Mb8lHrkAPI3BwIytAI+dSz7nUOKfg0wYq
         ZnS6XzOCe5i13vdBMJdHGHRJh++WuFE7XuH7PB5KjQgSYCJOMYSVVFPniN4mC6qWYKgs
         FFfQQ9WWtMbhHEZsVrYGGt6VHpyXbcGX/jpR7lO3EvNirYNrxsDFJHao6FXFkPkQBJSA
         lV084JfB6IdgsncKdhqpqC8KaYwXpWRNzxSqOkBQwBsDkX+UumJcYTQ9OJlbzqMF6P/f
         LKhw==
X-Gm-Message-State: ANhLgQ0NHSQ6QWurXH0S9UYN+5E68ko0dk5ea8ltgUf8YnWGQd91863Z
	upCNESy9vmn0rjOVSJYPGFm/AFprcY+dKw==
X-Received: by 2002:a17:90a:240f:: with SMTP id h15mr117642pje.176.1583952221855;
        Wed, 11 Mar 2020 11:43:41 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.175])
        by smtp.gmail.com with ESMTPSA id p2sm34459311pfb.41.2020.03.11.11.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 11:43:41 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: [PATCH 0/5] patchset for clean-ups in comedi
Date: Thu, 12 Mar 2020 00:13:22 +0530
Message-Id: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1

THis patchset contains changes that reformat the code in a function to
make it more readbale, put conditions in one `if` statement, add lines
after a struct, add braces in a macro to prevent precedence issues, and
converts signed to unsigned int in driver comedi.

Kaaira Gupta (5):
  staging: comedi: ni_mio_common.c: reformat code
  staging: comedi: check condition in one statement
  staging: comedi: drivers: add line after struct
  staging: comedi: add braces to prevent precedence
  staging: comedi: drivers: use unsigned int

 drivers/staging/comedi/drivers/das08.c         | 1 +
 drivers/staging/comedi/drivers/das1800.c       | 2 +-
 drivers/staging/comedi/drivers/ni_mio_common.c | 8 ++++----
 drivers/staging/comedi/drivers/usbdux.c        | 4 +---
 4 files changed, 7 insertions(+), 8 deletions(-)

-- 
2.17.1


