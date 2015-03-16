X-GM-THRID: 8101368430592
X-Received: by 10.182.44.161 with SMTP id f1mr68070177obm.33.1426518724260;
        Mon, 16 Mar 2015 08:12:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.61.200 with SMTP id s8ls1079882igr.37.gmail; Mon, 16 Mar
 2015 08:12:04 -0700 (PDT)
X-Received: by 10.50.30.106 with SMTP id r10mr87283202igh.0.1426518724083;
        Mon, 16 Mar 2015 08:12:04 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gu4si1977982pac.1.2015.03.16.08.12.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 08:12:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2CB5FAF3;
	Mon, 16 Mar 2015 15:12:02 +0000 (UTC)
Date: Mon, 16 Mar 2015 16:12:01 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Taiane Coelho Ramos <exhora.tat@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: ade7758: Remove braces
 on a single if
Message-ID: <20150316151201.GA26296@kroah.com>
References: <20150313163537.GA3066@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150313163537.GA3066@localhost.localdomain>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 13, 2015 at 01:35:38PM -0300, Taiane Coelho Ramos wrote:
> This patch fixes the checkpatch.pl warning:
> 
> WARNING: braces {} are not necessary for single
> statement blocks
> 
> Signed-off-by: Taiane Coelho Ramos <exhora.tat@gmail.com>
> ---
>  drivers/staging/iio/meter/ade7758_ring.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Doesn't apply to my tree either :(

