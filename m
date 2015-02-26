X-GM-THRID: 2517133950976
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,25a6457a67aef068
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.67.4.230 with SMTP id ch6mr10460409pad.16.1424987092191;
        Thu, 26 Feb 2015 13:44:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.83 with SMTP id g77ls345087qgd.99.gmail; Thu, 26 Feb
 2015 13:44:51 -0800 (PST)
X-Received: by 10.236.216.69 with SMTP id f65mr9725081yhp.58.1424987091821;
        Thu, 26 Feb 2015 13:44:51 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id hs7si272498pad.1.2015.02.26.13.44.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:44:51 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 883D6B1B;
	Thu, 26 Feb 2015 21:44:51 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:44:51 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 4/4] staging: rtl8192u: Fix quoted
 string split across lines.
Message-ID: <20150226214451.GB12357@kroah.com>
References: <cover.1424622240.git.navyasri.tech@gmail.com>
 <72bbf597b52686359f45a7f24f733f7771060f41.1424622240.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <72bbf597b52686359f45a7f24f733f7771060f41.1424622240.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Feb 22, 2015 at 10:13:08PM +0530, Navya Sri Nizamkari wrote:
> This patch fixes the checkpatch.pl warning:
> 
> WARNING: quoted string split across lines
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

Also doesn't apply :(

