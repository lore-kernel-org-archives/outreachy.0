X-GM-THRID: 6950672534035496960
X-Received: by 2002:a05:6402:5a:: with SMTP id f26mr30529576edu.285.1618343346156;
        Tue, 13 Apr 2021 12:49:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:e085:: with SMTP id gh5ls3410918ejb.6.gmail; Tue, 13
 Apr 2021 12:49:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwvzOwr+rDfqMob+cEqFxWQgpPstkWNKV+6Y733JqMOvTskghdIw4CKmdaX5T+gY2eqm5i2
X-Received: by 2002:a17:906:cc48:: with SMTP id mm8mr8080437ejb.58.1618343344607;
        Tue, 13 Apr 2021 12:49:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618343344; cv=none;
        d=google.com; s=arc-20160816;
        b=N4jBMIoZPC9cFBkNofhdv/bB3FncNnlGeJE5F4fLwkBdnipoml+ycwAZZGLljPoODM
         Mj6RpcgODnHYE0+s3/HZPd37+Qwybbt+6tlZ8eF90LxWtLiVrUbY2rJk+JsHVmmxvEn+
         nOd4Jml0/z+pq3lvvyxauKuXBpSAInnk6dfAm8IvPNqYra2XJd9B4h7wB96h4adBf4lk
         VBGCI5b6MrX1h5vcTmTiCDTPAmH18Mcy0BNCk+loZ5rMoufNbZ9IvfIE0HpP2T38Rt1F
         IRM9KqywIpnaOtGM1go82CiDmiONeW/teYBUXFJlbMH/l9y4DZm9XcfnJzOAp6s9AmXi
         umag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nbcw4udwhbGZK1KxJG3rMK3oFZk6fMlWAAr8sT0AiFg=;
        b=gOsALUTc4fQnYkKEVVElUhm+yQoS+0An0K1UW14wwgmqgKCwb4g8ZALk/ZrnaA1lvu
         L9n/dNSPHHDKuJZs+7fxt9600gYue0P6HZmJ2YE+lNutxc71JA4jJDR/J1CS691ryNJH
         aBLoOzsxmrZiSKYu6wvDW0MO1YQ4N6FxfEihCWvRmOasuOtM4v00kFnqV71ar/wNcNJ5
         JgLQj0hSGml7gq0H1OmUuKcMW5hedq12RXHUyn0UTMIpZm7LmR49ODbUQBR54kNlvamu
         Byh5noOXySyLVqJA9j7m3UiyGfCgkAJR3o9R3hHwBqA672tPWFYW5Ri+R73irkvE9aBb
         8Jhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=qdyXvIjy;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id r21si1170961ejo.0.2021.04.13.12.49.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 12:49:04 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=qdyXvIjy;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=nbcw4udwhbGZK1KxJG3rMK3oFZk6fMlWAAr8sT0AiFg=; b=qdyXvIjyqBvlpBNt/ry9bySb5R
	SPRLhCOYGcLYrkePQ0JVs+3n80ANCv9IkeaLafifcOjUkmLdvN3+8mqbOGCo/X28I5H/Zk8liKa18
	jAraWVwhpjf/I42ZViXzJ/GvacHje0ei9bpch4pUKOBNnZ++qGmZxtIwjeNuB6dHdH+ka+7QuEhNd
	RhyCVLBfCdX4H6VE9vrnuM+CKHPdBGUQzCnnbods8UIrTPRIWr4fTCBOtGYCdbfy+f3JBYlXicrVZ
	Pba4ujJv8XNbIreHWgpQVNppvIfdSRMi3m+efGSqW0SbGhY5nMKT23qHpNswMv0ERnEJmQ7rztHH4
	AG0IgAZQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lWP1g-006BMB-RN; Tue, 13 Apr 2021 19:48:48 +0000
Date: Tue, 13 Apr 2021 20:48:44 +0100
From: Matthew Wilcox <willy@infradead.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] :staging: rtl8723bs: Remove useless
 led_blink_hdl()
Message-ID: <20210413194844.GR2531743@casper.infradead.org>
References: <20210413155908.8691-1-fmdefrancesco@gmail.com>
 <2400087.QbMOWSuNhY@linux.local>
 <alpine.DEB.2.22.394.2104132123180.14108@hadrien>
 <7008359.Jy8utYDuns@linux.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7008359.Jy8utYDuns@linux.local>

On Tue, Apr 13, 2021 at 09:45:03PM +0200, Fabio M. De Francesco wrote:
> 1) The driver doesn't call that function from anywhere else than the macro.
> 2) You have explained that the macro add its symbol to a slot in an array 
> that would shift all the subsequent elements down if that macro is not used 
> exactly in the line where it is.
> 3) Dan Carpenter said that that array is full of null functions (or empty 
> slots?).
> 
> Unless that function is called anonymously dereferencing its address from 
> the position it occupies in the array, I'm not able to see what else means 
> can any caller use.
> 
> I know I have much less experience than you with C: what can go wrong?

Here's where the driver calls that function:

$ git grep wlancmds drivers/staging/rtl8723bs/
drivers/staging/rtl8723bs/core/rtw_cmd.c:static struct cmd_hdl wlancmds[] = {
drivers/staging/rtl8723bs/core/rtw_cmd.c:               if (pcmd->cmdcode < ARRAY_SIZE(wlancmds)) {
drivers/staging/rtl8723bs/core/rtw_cmd.c:                       cmd_hdl = wlancmds[pcmd->cmdcode].h2cfuns;


