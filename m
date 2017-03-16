X-GM-THRID: 6397080703466471424
X-Received: by 10.98.252.205 with SMTP id e196mr209005pfh.26.1489647766200;
        Thu, 16 Mar 2017 00:02:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.98 with SMTP id 89ls1813755otb.22.gmail; Thu, 16 Mar
 2017 00:02:45 -0700 (PDT)
X-Received: by 10.129.105.130 with SMTP id e124mr4110741ywc.2.1489647765538;
        Thu, 16 Mar 2017 00:02:45 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r66si751015pfb.7.2017.03.16.00.02.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Mar 2017 00:02:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [183.98.136.252])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D903B514;
	Thu, 16 Mar 2017 07:02:44 +0000 (UTC)
Date: Thu, 16 Mar 2017 16:02:31 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: William Hubbs <w.d.hubbs@gmail.com>, devel@driverdev.osuosl.org,
	Kirk Reiser <kirk@reisers.ca>, speakup@linux-speakup.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Chris Brannon <chris@the-brannons.com>
Subject: Re: [PATCH v3 0/2] staging: checkpatch cleanups
Message-ID: <20170316070231.GA24453@kroah.com>
References: <20170313202004.24382-1-arushisinghal19971997@gmail.com>
 <20170313220546.GB14919@kroah.com>
 <CA+XqjF9cHvR=VnPmE3mqcKfyPJLL7_sMHWde_aWVG=WbT_rTMA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+XqjF9cHvR=VnPmE3mqcKfyPJLL7_sMHWde_aWVG=WbT_rTMA@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Thu, Mar 16, 2017 at 12:02:25PM +0530, Arushi Singhal wrote:
> 
> 
> On Tue, Mar 14, 2017 at 3:35 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> 
>     On Tue, Mar 14, 2017 at 01:49:52AM +0530, Arushi Singhal wrote:
>     > Improve readability by fixing multiple checkpatch.pl
>     > issues in drivers.
>     >
>     > Arushi Singhal (2):
>     >� �staging: speakup: identation should use tabs
>     >� �staging: dvb-frontends: removed code in comments.
> 
>     What changed from v2?
> 
> �In this patch nothing is changed from v2 but it is a patch series so have to
> write v2 everywhere.

And everywhere you also need to say why it is v2, otherwise we have no
idea :(

thanks,

greg k-h

