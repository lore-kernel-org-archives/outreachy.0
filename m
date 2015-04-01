X-GM-THRID: 8985735331840
X-Received: by 10.182.104.37 with SMTP id gb5mr51436817obb.45.1427902130494;
        Wed, 01 Apr 2015 08:28:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.228 with SMTP id x91ls347676qgx.9.gmail; Wed, 01 Apr
 2015 08:28:50 -0700 (PDT)
X-Received: by 10.236.70.234 with SMTP id p70mr49605652yhd.56.1427902130304;
        Wed, 01 Apr 2015 08:28:50 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gu4si255569pac.1.2015.04.01.08.28.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 08:28:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.rsr.lip6.fr [132.227.76.96])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 5D528B52;
	Wed,  1 Apr 2015 15:28:49 +0000 (UTC)
Date: Wed, 1 Apr 2015 17:28:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Darshana Padmadas <darshanapadmadas@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/4] Staging: rtl8192e: Replace
 memcpy with ether_addr_copy
Message-ID: <20150401152846.GA4557@kroah.com>
References: <1427471227-17259-1-git-send-email-darshanapadmadas@gmail.com>
 <1427471227-17259-2-git-send-email-darshanapadmadas@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1427471227-17259-2-git-send-email-darshanapadmadas@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 27, 2015 at 09:17:04PM +0530, Darshana Padmadas wrote:
> This patch fixes the following warning found by checkpatch.pl:
> Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2
> 
> Pahole showed that the structure for BAReq and Delba is aligned:
> struct rtllib_hdr_3addr {
>         __le16                     frame_ctl;            /*     0     2 */
>         __le16                     duration_id;          /*     2     2 */
>         u8                         addr1[6];             /*     4     6 */
>         u8                         addr2[6];             /*    10     6 */
>         u8                         addr3[6];             /*    16     6 */
>         __le16                     seq_ctl;              /*    22     2 */
>         u8                         payload[0];           /*    24     0 */
> 
>         /* size: 24, cachelines: 1, members: 7 */
>         /* last cacheline: 24 bytes */
> };
> 
> Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl819x_BAProc.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

One of the patches in this series causes a bunch of build warnings,
which means you didn't test build them :(

So I can't take these, please fix them up, TEST THEM, and then resend.

thanks,

greg k-h

