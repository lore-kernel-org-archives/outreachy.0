X-GM-THRID: 6392026082663464960
X-Received: by 10.99.49.83 with SMTP id x80mr15114176pgx.2.1489325929443;
        Sun, 12 Mar 2017 06:38:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.197 with SMTP id l188ls3450069ioe.23.gmail; Sun, 12
 Mar 2017 06:38:48 -0700 (PDT)
X-Received: by 10.99.112.1 with SMTP id l1mr13258487pgc.142.1489325928595;
        Sun, 12 Mar 2017 06:38:48 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si2713880pfx.8.2017.03.12.06.38.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 06:38:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A33276C;
	Sun, 12 Mar 2017 13:38:46 +0000 (UTC)
Date: Sun, 12 Mar 2017 14:38:29 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com, oleg.drokin@intel.com,
	andreas.dilger@intel.com, jsimmons@infradead.org
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: Replace typedef with
 struct
Message-ID: <20170312133829.GD27791@kroah.com>
References: <1489247393-26670-1-git-send-email-gs051095@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1489247393-26670-1-git-send-email-gs051095@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sat, Mar 11, 2017 at 09:19:53PM +0530, Gargi Sharma wrote:
> Using typedef for a structure type is not suggested in Linux kernel
> coding style guidelines. Hence, occurences of typedefs have been
> removed in the lib-types.h file. Grep was also used to ensure that
> all occurence of the typedefs have been removed. The module compiles
> without any warnings or errors.
> 
> Script 1:
> @r1@
> type T;
> @@
> 
> typedef struct { ... } T;
> 
> @script:python c1@
> T2;
> T << r1.T;
> @@
> if T[-2:] =="_t":
>   coccinelle.T2 = T[:-2];
>   print T
> else:
>   coccinelle.T2=T;
> 
> @r2@
> type r1.T;
> identifier c1.T2;
> @@
> -typedef
> struct
> + T2
> { ... }
> -T
> ;
> 
> @r3@
> type r1.T;
> identifier c1.T2;
> @@
> - T
> + struct T2
> 
> Script 2:
> @@
> typedef lnet_rc_data_t;
> typedef lnet_remotenet_t;
> typedef lnet_route_t;
> typedef lnet_rtrbuf_t;
> typedef lnet_rtrbufpool_t;
> typedef lnet_test_peer_t;
> @@
> (
> - lnet_rc_data_t
> + struct lnet_rc_data
> |
> - lnet_remotenet_t
> + struct lnet_remotenet
> |
> - lnet_route_t
> + struct lnet_route
> |
> - lnet_rtrbuf_t
> + struct lnet_rtrbuf
> |
> - lnet_rtrbufpool_t
> + struct lnet_rtrbufpool
> |
> - lnet_test_peer_t
> + struct lnet_test_peer

Please only search/replace one typedef at a time, to make it easier
(actually, possible) to review.

That's the way other typedefs were fixed up in this code base, please
always look at the history to make sure you do things the same way.

thanks,

greg k-h

