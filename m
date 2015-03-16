X-GM-THRID: 7938697592832
X-Received: by 10.50.254.65 with SMTP id ag1mr8801148igd.7.1426517748152;
        Mon, 16 Mar 2015 07:55:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.70 with SMTP id s64ls2959595qgd.38.gmail; Mon, 16 Mar
 2015 07:55:47 -0700 (PDT)
X-Received: by 10.236.223.41 with SMTP id u39mr64949480yhp.49.1426517747969;
        Mon, 16 Mar 2015 07:55:47 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gu4si1968309pac.1.2015.03.16.07.55.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 07:55:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1E2F4AC4;
	Mon, 16 Mar 2015 14:55:46 +0000 (UTC)
Date: Mon, 16 Mar 2015 15:55:45 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com, ksenija.stanojevic@gmail.co
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] Staging: rtl8192u: Replace
 types
Message-ID: <20150316145545.GB14799@kroah.com>
References: <cover.1426181718.git.ksenija.stanojevic@gmail.com>
 <30a710d6afe0be094babd21a9d69df3a939655d8.1426181718.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <30a710d6afe0be094babd21a9d69df3a939655d8.1426181718.git.ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 12, 2015 at 06:36:49PM +0100, Ksenija Stanojevic wrote:
> This patch replaces types made by typedefs in r8192U_cmdpkt.h by struct
> definitions. Also where ever struct was added line was aligned and
> doesn't exceed 80 character mark and unnecessary tabs were removed.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
> v2: change commit message.
> 
>  drivers/staging/rtl8192u/r819xU_cmdpkt.c | 35 ++++++++++++++++----------------
>  1 file changed, 18 insertions(+), 17 deletions(-)

This requires your previous patch, which would have broken the build,
you can't do that either :(

