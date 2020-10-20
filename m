X-GM-THRID: 6885771919120924672
X-Received: by 2002:a05:6402:a4f:: with SMTP id bt15mr4317525edb.345.1603219448641;
        Tue, 20 Oct 2020 11:44:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:848:: with SMTP id f8ls1370477ejd.4.gmail; Tue, 20
 Oct 2020 11:44:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyhWwRa7z5SqGVEKO6uNw/zrnUsP9jj+nrlMx1xronyrOnAh16SBgdOmtiLobGBjnVQ0VAt
X-Received: by 2002:a17:906:11d6:: with SMTP id o22mr4764289eja.171.1603219446764;
        Tue, 20 Oct 2020 11:44:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603219446; cv=none;
        d=google.com; s=arc-20160816;
        b=vAtW12CIDkn28RgFvjAbt3jk8SnYswKREVCZSiKDaraRruqpXE3eMhyl1iPkKe6k8v
         lnIsV+ZDjNkyCI/Ucp0G+L/tBAWLSmCTSdzUlZ44X7empxidf1iMmS6t9fh8V49Rng3o
         6de3k4XvE9cutuwH6o47v8kuDwbg8nzq5R+Pb3Bz27rKnm3eqifsCi/82O8QxYtkJJIR
         f52Ywla/jt6WB2B0gMAzo0RM172RC1/RUMfyIFp8zASGuuOcgcoQnSxXCefp73/q56/8
         57BP+eC9UoRUBLj6/8vermyL5knCOa92IjTMFOuyLKtG2TyGL923DRKlkiIWT/jEr/k7
         zApQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FisEfntxRD16Mc2UH0UduZ4Jj0SVaufwZnhtyHdV9Pw=;
        b=ZLAG9/XbSRaZu6SGk0uSZf4wS7TCoBFYmdfCKb27cmf0Ucup+QoCgW+I7d8eJXdFxF
         zv6b/eEpicMAzcnC06DRP1f3EBJVvYYe2Xaextsnfsfnytm51zkkPZeu2lXSUOkadm0l
         NKiH+RC9vpy2KBE57gK+15IKePKkXw8r+GIwo2b9m/QxWi7G6/k//fcspCdekUnIVfut
         K3rncc8dzcIRlpBsYKKk3ueiulHKRrc38GdbUJbpPdphZKHgIWcxdDUHzTREOWnvEsSd
         KbeGHZbRX2bvjXLFUypJQRT3SE4zKRHPF0ZMBVAf8mONFCH+h5+11yPu/pExaN/kIrGI
         gsIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=AQupAPyU;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id ba3si80885edb.2.2020.10.20.11.44.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 11:44:06 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=AQupAPyU;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=FisEfntxRD16Mc2UH0UduZ4Jj0SVaufwZnhtyHdV9Pw=; b=AQupAPyUG0k5W7lneeKs9nvx+x
	bGynEHuIFEXEvoLfRuevtfLxeHZWXMIUZu8TCBrJYIMerXODBBK55cT4p+fkAPsbX8AgiNzn6b8rp
	a1T+06x6GzkyC+qMgCB7eBCe3Nb4LSAKeTzl+YLLvZ+qnc9BG7mzUahybecIuWrss0HeF0Mvrv4tg
	dTJRJsHEaYTXC0XZ/usvHGFw5u7hA266maVfxT1ENLOq+QssJ9kWMuy3lLhXFMlBNpplwsq0MbdhO
	M3bxJr5ostyJTMk3461VqiYiUiYRKa8b/0xuP/mAjAfit03TWBY0RhPQrfRZ9UPFXd6AAX9DCJrms
	x5JK0riw==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUwc8-0007NB-Qy; Tue, 20 Oct 2020 18:44:05 +0000
Date: Tue, 20 Oct 2020 19:44:04 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Elena Afanasova <eafanasova@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging/rtl8712: use BIT macro
Message-ID: <20201020184404.GC20115@casper.infradead.org>
References: <20201020182439.43314-1-eafanasova@gmail.com>
 <20201020182439.43314-3-eafanasova@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201020182439.43314-3-eafanasova@gmail.com>

On Tue, Oct 20, 2020 at 11:24:39AM -0700, Elena Afanasova wrote:
> Reported by checkpatch.pl

Checkpatch is wrong.

> +++ b/drivers/staging/rtl8712/rtl871x_recv.h
> @@ -8,7 +8,7 @@
>  #define NR_RECVFRAME 256
>  
>  #define RXFRAME_ALIGN	8
> -#define RXFRAME_ALIGN_SZ	(1 << RXFRAME_ALIGN)
> +#define RXFRAME_ALIGN_SZ	BIT(RXFRAME_ALIGN)
>  
>  #define MAX_SUBFRAME_COUNT	64
>  
> -- 
> 2.25.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201020182439.43314-3-eafanasova%40gmail.com.

