X-GM-THRID: 6949661210955481088
X-Received: by 2002:a05:6000:550:: with SMTP id b16mr5258655wrf.378.1618102084281;
        Sat, 10 Apr 2021 17:48:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:9a6:: with SMTP id w38ls883643wmp.2.gmail; Sat, 10
 Apr 2021 17:48:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz84VptYvHgrjURjpAudGatBilOyGXCp74wc8cFxkECDhLDsXC5TkQzpRnLDc0s7VeOJKA0
X-Received: by 2002:a05:600c:210a:: with SMTP id u10mr4024338wml.18.1618102083037;
        Sat, 10 Apr 2021 17:48:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618102083; cv=none;
        d=google.com; s=arc-20160816;
        b=pIkod4FvBhIthL6fkHtdp8YAYkhIIJSiQc4GLyS4drTWDKtmjCcI5a5hBWpXgKa/Ky
         QE3izFaqTKWUVUwqhmEf7zUUqBMwe2EcX9k7D8YzImo1Y4dUcPcQ55iwF55AT+Q+ZnGs
         oBiQhBqUVnnFR62ibUS1zZ9dCnCbS7PktOCJxFH8vG4t0s/rU1cow+VAYrD56IGwrDS/
         JkKBCS3PRFuaqYNnNIwAywIJG07Os2V6bb/F7MRua+LlimPYZuamANrzghZqPZnXFgvO
         yrcb/HUWyuaCs2a2tPXjO8oJSxGeO88HOuxflr6KJNMmWkxUbzWEF7BhVC55u9BiYm6F
         Runw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LSUkaqlj8iXWC9SoGpSpGGtVqif6bEtw58wMKlY4pcc=;
        b=bS6Gt70G3WeaXxkdLVmULF6q87WxDAZm5p5Tjbnarswu6d0D88P3nC6l01cCWt3AwS
         oVZK2Bfx5M0nNkuOZHg5apQXIlqSEKnycAJDXHdjZc8BhKaQKqHopmpKHbFJA6FA1Dje
         EstncfyAOd4pn+QlH8Cn8gXOTn9UAWrxBEMq0/ouvSlFIbvK6RFF0xlWNQ6G13J402Ka
         2LoM3j6KPPGNuZ42F42GNIE4lq9A3mMN0y5TMk6g2KgD61YKBW1bzZhY4FO9fBgnRT/0
         w1u/JgJto5D3/Jj8p6/rQctdMQFB12L6gHCURlxFOS2Vc2DsHaBDyBjKqK6k88jo+s8z
         p9lA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=jHO9q1Fg;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id t124si1045199wmb.3.2021.04.10.17.48.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 17:48:02 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=jHO9q1Fg;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=LSUkaqlj8iXWC9SoGpSpGGtVqif6bEtw58wMKlY4pcc=; b=jHO9q1FgS2snIn4q0xegbjpltK
	IvLS1ZurwYGQHeXQjSD7awQ3Mp/6CO8bnLQt4UaCr11k8/D7pMcIPXtQShqHzcmAtbYk2YpztJK88
	fU8jLCw3yD0ayyoE9+yhdv0LkoADtrDyhMI86gHNXb28qQRYQLCpwQs0tO3T8SJgSIDB47SWZrLAs
	z3bcA6X2Q43tWbTN4wHmxCWUpJpvDF8NOv7qccL5RINkS2cq5ke2XwvqCFDlcwwf4SSKvTiI0euNA
	LNCfy7fCSnwNa4Bqz5kFvnkteaMiDQxuDf4adk0rEkLJT3hl4QO5CWKWvDZUOJxtyLWvnyCZuJV+S
	zMIIAbpg==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lVOGZ-002LAn-AL; Sun, 11 Apr 2021 00:47:57 +0000
Date: Sun, 11 Apr 2021 01:47:55 +0100
From: Matthew Wilcox <willy@infradead.org>
To: majauhar <siddmohamed19@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 0] Staging(VT6656): Modified camelCase
 Variables
Message-ID: <20210411004755.GB2531743@casper.infradead.org>
References: <20210410223444.GA110316@Ali-Ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210410223444.GA110316@Ali-Ubuntu>

On Sun, Apr 11, 2021 at 04:04:44AM +0530, majauhar wrote:
> '''

Please generate your changelog without these quote marks.

> Variables 'uVar' and 'uModulo' were generating camelCase style issue.
> Modified them as 'u_var' and 'u_modulo' and the issue disappeared.

The 'uVar' naming is an indication of the bad kind of Hungarian notation.
https://www.joelonsoftware.com/2005/05/11/making-wrong-code-look-wrong/

> -#define ADD_ONE_WITH_WRAP_AROUND(uVar, uModulo) {	\
> -	if ((uVar) >= ((uModulo) - 1))			\
> -		(uVar) = 0;				\
> +#define ADD_ONE_WITH_WRAP_AROUND(u_var, u_modulo) {	\
> +	if ((u_var) >= ((u_modulo) - 1))		\
> +		(u_var) = 0;				\
>  	else						\
> -		(uVar)++;				\
> +		(u_var)++;				\
>  }

it would be better to rename these to 'var' and 'modulo'.

But then we start to question the entire premise of this macro.  It should
probably be written as 'var = (var + 1) % modulo' (because arithmetic
is generally cheaper than branches).  And when you write it like that,
you wonder why it's a macro at all instead of just written out.  Not to
mention that 'ADD_ONE' is generally spelled as 'INC'.

So ... the checkpatch warnings are good, but often they raise more
questions than the obvious one.

