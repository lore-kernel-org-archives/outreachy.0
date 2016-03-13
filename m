X-GM-THRID: 6261336843616256000
X-Received: by 10.66.63.104 with SMTP id f8mr13030440pas.4.1457831087404;
        Sat, 12 Mar 2016 17:04:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.102 with SMTP id o93ls3049876qgd.16.gmail; Sat, 12 Mar
 2016 17:04:45 -0800 (PST)
X-Received: by 10.140.250.69 with SMTP id v66mr12968451qhc.22.1457831085649;
        Sat, 12 Mar 2016 17:04:45 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si2346540pab.0.2016.03.12.17.04.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 17:04:45 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [50.34.226.154])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 23144D18;
	Sun, 13 Mar 2016 01:04:45 +0000 (UTC)
Date: Sat, 12 Mar 2016 17:04:16 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Juliana Rodrigues <juliana.orod@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] iio: humidity: si7020: fixed msleep <
 20ms can sleep for up to 20ms
Message-ID: <20160313010416.GA10256@kroah.com>
References: <20160313005405.GA2623@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160313005405.GA2623@spock>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Mar 12, 2016 at 09:54:05PM -0300, Juliana Rodrigues wrote:
> This patch fixes the following checkpatch.pl warning:
> WARNING: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.txt
> +       msleep(15);
> 
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
>  drivers/iio/humidity/si7020.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Again, I can't do anything with patches outside of drivers/staging :(

