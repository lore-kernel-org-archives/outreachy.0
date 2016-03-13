X-GM-THRID: 6261315047016890368
X-Received: by 10.140.150.210 with SMTP id 201mr12849946qhw.28.1457829936942;
        Sat, 12 Mar 2016 16:45:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.28.200 with SMTP id c191ls1567697ioc.36.gmail; Sat, 12 Mar
 2016 16:45:36 -0800 (PST)
X-Received: by 10.66.102.106 with SMTP id fn10mr12727142pab.36.1457829936583;
        Sat, 12 Mar 2016 16:45:36 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si2341382pac.1.2016.03.12.16.45.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 16:45:36 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [50.34.226.154])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 42B9BD07;
	Sun, 13 Mar 2016 00:45:33 +0000 (UTC)
Date: Sat, 12 Mar 2016 16:29:40 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Juliana Rodrigues <juliana.orod@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: android: binder: fixed line
 over 80 caracters
Message-ID: <20160313002940.GD4420@kroah.com>
References: <20160312234007.GA8939@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160312234007.GA8939@spock>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Mar 12, 2016 at 08:40:07PM -0300, Juliana Rodrigues wrote:
> This patch fixes the following warning caused by checkpatch.pl:
> 
> WARNING: line over 80 characters
> +                                       if (thread->looper & (BINDER_LOOPER_STATE_REGISTERED | BINDER_LOOPER_STATE_ENTERED)) {
> 
> Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
> ---
>  drivers/android/binder.c | 4 +++-

Same comment here about not being in drivers/staging :(

