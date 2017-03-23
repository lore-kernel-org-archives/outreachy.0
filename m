X-GM-THRID: 6400174624352501760
X-Received: by 10.98.211.137 with SMTP id z9mr176716pfk.34.1490252064929;
        Wed, 22 Mar 2017 23:54:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.142.17 with SMTP id q17ls1240728iod.51.gmail; Wed, 22 Mar
 2017 23:54:24 -0700 (PDT)
X-Received: by 10.99.155.1 with SMTP id r1mr278522pgd.71.1490252064239;
        Wed, 22 Mar 2017 23:54:24 -0700 (PDT)
Received: by 10.55.154.202 with SMTP id c193msqke;
        Wed, 22 Mar 2017 23:46:33 -0700 (PDT)
X-Received: by 10.223.142.70 with SMTP id n64mr36641wrb.12.1490251593034;
        Wed, 22 Mar 2017 23:46:33 -0700 (PDT)
Return-Path: <moore@free.fr>
Received: from smtp4-g21.free.fr (smtp4-g21.free.fr. [2a01:e0c:1:1599::13])
        by gmr-mx.google.com with ESMTPS id x188si5547wmx.0.2017.03.22.23.46.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 23:46:33 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of moore@free.fr designates 2a01:e0c:1:1599::13 as permitted sender) client-ip=2a01:e0c:1:1599::13;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of moore@free.fr designates 2a01:e0c:1:1599::13 as permitted sender) smtp.mailfrom=moore@free.fr
Received: from [192.168.1.31] (unknown [78.218.214.33])
	by smtp4-g21.free.fr (Postfix) with ESMTP id 2533119F5D5;
	Thu, 23 Mar 2017 07:46:32 +0100 (CET)
Subject: Re: [PATCH 0/3] staging: media: Replace a bit shift.
To: Arushi Singhal <arushisinghal19971997@gmail.com>,
 outreachy-kernel@googlegroups.com
References: <20170322042609.23525-1-arushisinghal19971997@gmail.com>
Cc: linux-media@vger.kernel.org, gregkh@linuxfoundation.org,
 mchehab@kernel.org, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
From: Chris Moore <moore@free.fr>
Message-ID: <1cdeae57-73b1-c62c-da9a-b9e75d2f2ab1@free.fr>
Date: Thu, 23 Mar 2017 07:46:30 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170322042609.23525-1-arushisinghal19971997@gmail.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

Le 22/03/2017 � 05:26, Arushi Singhal a �crit :
> Replace a bit shift by a use of BIT in media driver.
>
> Arushi Singhal (3):
>    staging: media: Replace a bit shift by a use of BIT.
>    staging: media: davinci_vpfe: Replace a bit shift by a use of BIT.
>    staging: media: omap4iss: Replace a bit shift by a use of BIT.
>
>   .../media/atomisp/pci/atomisp2/atomisp_cmd.c       | 12 +++++-----
>   .../atomisp/pci/atomisp2/atomisp_compat_css20.c    |  6 ++---
>   .../media/atomisp/pci/atomisp2/atomisp_drvfs.c     |  6 ++---
>   .../media/atomisp/pci/atomisp2/atomisp_v4l2.c      | 18 +++++++--------
>   .../media/atomisp/pci/atomisp2/hmm/hmm_bo.c        |  2 +-
>   drivers/staging/media/davinci_vpfe/dm365_ipipe.c   |  2 +-
>   drivers/staging/media/davinci_vpfe/dm365_ipipeif.c |  2 +-
>   drivers/staging/media/davinci_vpfe/dm365_isif.c    | 26 +++++++++++-----------
>   drivers/staging/media/davinci_vpfe/dm365_resizer.c |  6 ++---
>   drivers/staging/media/omap4iss/iss_csi2.c          |  2 +-
>   drivers/staging/media/omap4iss/iss_ipipe.c         |  2 +-
>   drivers/staging/media/omap4iss/iss_ipipeif.c       |  2 +-
>   drivers/staging/media/omap4iss/iss_resizer.c       |  2 +-
>   13 files changed, 44 insertions(+), 44 deletions(-)
>

Most of these replacements add redundant parentheses around the BIT macro.
IMHO this makes the code less readable.
So I suggest (BIT(c)) -> BIT(c).

Cheers,
Chris


