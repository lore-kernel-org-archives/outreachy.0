X-GM-THRID: 6261299365460049920
X-Received: by 10.129.154.16 with SMTP id r16mr12818422ywg.39.1457829924070;
        Sat, 12 Mar 2016 16:45:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.149 with SMTP id 21ls3332959qgd.55.gmail; Sat, 12 Mar
 2016 16:45:23 -0800 (PST)
X-Received: by 10.31.157.213 with SMTP id g204mr12852576vke.14.1457829923411;
        Sat, 12 Mar 2016 16:45:23 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id y20si2203705pfa.2.2016.03.12.16.45.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 16:45:23 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [50.34.226.154])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 330B3D07;
	Sun, 13 Mar 2016 00:45:18 +0000 (UTC)
Date: Sat, 12 Mar 2016 16:29:23 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Juliana Rodrigues <juliana.orod@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: android: binder: fixed
 checkpatch warning
Message-ID: <20160313002923.GC4420@kroah.com>
References: <20160312223913.GA17803@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160312223913.GA17803@spock>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Mar 12, 2016 at 07:39:13PM -0300, Juliana Rodrigues wrote:
> A comment was not properly formatted, causing warnings when running checkpatch.pl.
> 
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
>  drivers/android/binder.c | 10 ++++++----

I can't take outreachy patches for anything outside of drivers/staging/
why are you making changes in drivers/android?

sorry,

greg k-h

