X-GM-THRID: 6256340731045085184
X-Received: by 10.50.171.137 with SMTP id au9mr2729170igc.7.1457717020434;
        Fri, 11 Mar 2016 09:23:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.99.18 with SMTP id p18ls2708590qge.86.gmail; Fri, 11 Mar
 2016 09:23:39 -0800 (PST)
X-Received: by 10.140.167.7 with SMTP id n7mr7982208qhn.19.1457717019857;
        Fri, 11 Mar 2016 09:23:39 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sf5si1525014pac.1.2016.03.11.09.23.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 09:23:39 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 87988B1E;
	Fri, 11 Mar 2016 17:23:39 +0000 (UTC)
Date: Fri, 11 Mar 2016 09:23:39 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: obdclass: Use
 list_for_each_entry_safe
Message-ID: <20160311172339.GA12934@kroah.com>
References: <20160308140248.GA29844@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160308140248.GA29844@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Mar 08, 2016 at 07:32:48PM +0530, Bhaktipriya Shridhar wrote:
> Doubly linked lists which are  iterated  using list_empty
> and list_entry macros have been replaced with list_for_each_entry_safe
> macro.
> This makes the iteration simpler and more readable.
> 
> This patch replaces the while loop containing list_empty and list_entry
> with list_for_each_entry_safe.
> 
> This was done with Coccinelle.
> 
> @@
> expression E1;
> identifier I1, I2;
> type T;
> iterator name list_for_each_entry_safe;
> @@
> 
> T *I1;
> + T *tmp;
> ...
> - while (list_empty(&E1) == 0)
> + list_for_each_entry_safe (I1, tmp, &E1, I2)
> {
> ...when != T *I1;
> - I1 = list_entry(E1.next, T, I2);
> ...
> }
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
> 	-No change

I have 12 patches from you for the lustre code, but no idea what order
to apply them in, nor which version of which patch to apply :(

And some of them do not apply anymore now that some file names have
moved around.

Can you rebase your whole lustre patch set, and resend it in a patch
series, numbered, and threaded, so that I know what order to apply them
in, and so I know that I got them all.

thanks,

greg k-h

