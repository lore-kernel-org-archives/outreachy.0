X-GM-THRID: 6393343309495926784
X-Received: by 10.157.12.97 with SMTP id 88mr5065570otr.122.1489076708249;
        Thu, 09 Mar 2017 08:25:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.195 with SMTP id 61ls4733945oto.31.gmail; Thu, 09 Mar
 2017 08:25:07 -0800 (PST)
X-Received: by 10.157.45.11 with SMTP id v11mr5746890ota.105.1489076707855;
        Thu, 09 Mar 2017 08:25:07 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id g82si1276284pfb.5.2017.03.09.08.25.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 08:25:07 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 09611BBC;
	Thu,  9 Mar 2017 16:25:06 +0000 (UTC)
Date: Thu, 9 Mar 2017 17:24:58 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>, devel@driverdev.osuosl.org,
	Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Chris Brannon <chris@the-brannons.com>
Subject: Re: [PATCH 1/6] staging: speakup: Add blank line after
 function/struct/union/enum declarations
Message-ID: <20170309162458.GA28274@kroah.com>
References: <20170303201709.19997-1-arushisinghal19971997@gmail.com>
 <20170303201709.19997-2-arushisinghal19971997@gmail.com>
 <20170309132541.GB8690@kroah.com>
 <CA+XqjF_S9X5SmFo=AdSbPR8JnQvZzEye-xSnneF5eCm-6_G86Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+XqjF_S9X5SmFo=AdSbPR8JnQvZzEye-xSnneF5eCm-6_G86Q@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Thu, Mar 09, 2017 at 07:33:50PM +0530, Arushi Singhal wrote:
> 
> 
> On Thu, Mar 9, 2017 at 6:55 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> 
>     On Sat, Mar 04, 2017 at 01:47:04AM +0530, Arushi Singhal wrote:
>     > This patch fixes the warnings reported by checkpatch.pl
>     > for please use a blank line after function/struct/union/enum
>     > declarations.
>     >
>     > Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
>     > ---
>     >� drivers/staging/speakup/main.c� � � � �| 1 +
>     >� drivers/staging/speakup/serialio.c� � �| 1 +
>     >� drivers/staging/speakup/speakup_dtlk.c | 1 +
>     >� 3 files changed, 3 insertions(+)
> 
>     You seem to have sent me many different series of patches for this
>     driver, some of them the same, some different, some duplicates.� I have
>     no idea what to apply and what not to apply, so I'm dropping them all
>     from my patch queue.� Please fix up and resend a _single_ patch series
>     with your patches so I know what to review and possibly apply.
> 
> Hi Greg
> I think the patch series linked below is not confusing and can be applied.
> 
> https://groups.google.com/forum/#!searchin/outreachy-kernel/arushi|
> sort:relevance/outreachy-kernel/9W_8BejvjwU/reEewnffAwAJ

It's not in my queue at all, all speakup patches are now flushed out, so
if I have not applied it, please resend.

thanks,

greg k-h

