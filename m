X-GM-THRID: 6256340731045085184
X-Received: by 10.25.160.207 with SMTP id j198mr1997210lfe.4.1456935931581;
        Wed, 02 Mar 2016 08:25:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.131.203 with SMTP id f194ls345107lfd.77.gmail; Wed, 02 Mar
 2016 08:25:31 -0800 (PST)
X-Received: by 10.112.132.97 with SMTP id ot1mr3141548lbb.10.1456935931073;
        Wed, 02 Mar 2016 08:25:31 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w197si212939wmw.3.2016.03.02.08.25.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 08:25:31 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B25E0DBA;
	Wed,  2 Mar 2016 16:25:29 +0000 (UTC)
Date: Wed, 2 Mar 2016 08:25:29 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: obdclass: Use
 list_for_each_entry_safe
Message-ID: <20160302162529.GC987@kroah.com>
References: <20160228135431.GA18987@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160228135431.GA18987@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Feb 28, 2016 at 07:24:31PM +0530, Bhaktipriya Shridhar wrote:
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
>  drivers/staging/lustre/lustre/obdclass/lustre_peer.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)

Does not apply to the tree :(

