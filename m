X-GM-THRID: 6669265984427130880
X-Received: by 2002:a17:902:5c5:: with SMTP id f63mr3984647plf.108.1552819465035;
        Sun, 17 Mar 2019 03:44:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:5081:: with SMTP id r1ls5281890pgp.9.gmail; Sun, 17 Mar
 2019 03:44:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqygs5PaXs0RtG7LFxQbSQkDR6GB2n1GdeunGnvNsLClgzI21ykFhL9PckhP7TJgC4mPZdZ5
X-Received: by 2002:a63:5955:: with SMTP id j21mr4741146pgm.128.1552819464322;
        Sun, 17 Mar 2019 03:44:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552819464; cv=none;
        d=google.com; s=arc-20160816;
        b=PDmcJCsE9FwrqRat0RqPJJIcBxSL10XqrSYkgt+Ua3yi3TYbKOtqIpEYy6GRukk4C+
         Ks2ZDMsNCGvhstz5PwNLJ17B761unjPiuXXlkOtqZxBJ7oVNbfDtZubR3EacRCRsS+OA
         c/YiJrHqDf+fWRliw+TKJrQUniIusrCVjVaNlTbjuZI8PKnaa6e9WTyKnWVnUOIMpG8X
         ZmQRuhdqllLyxK4Vry99/7HN6RCE2qpq/M0Ypv9S9ovE19npcW1QFVuyk6DrDy4Z8wTp
         yJuYwxt21s/GpIXWiM4ZJfAcnbA8luK8sH6wVZF0zB7TDalyIBrAtSbecbu81svjjgE+
         9gHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FUK277jH79ZfJfwXHeEQfGihy+Flh44lall6Ji2E7Do=;
        b=JzVja0syJLDUsmWmNMuVgNNpgoUkq0BEI/YthvD/3yMruQhinTJ+AYpM1BgZBa9Q49
         3BzgEUx55WTAz8YBQWZ2onw77+rhkdEefpoz7OFPNBX87dh5YuTEbHXGwj+pY9VIJEVd
         yYhozPVRQlZLVucB39EOFUGXfJ797Q7na+ruUl0mwTCpKd4K3r8MyqmXNdU6HLk9U7Ul
         YhTNRUGjVPDK5yjmn8gCfaSEa0v0+wyf8aEIvdPvnE9dRzYHZiOSIqrT6cd2jxLgMo1L
         WbmL/DU3DOZJ8HeCVi9eUpbkU6HcBIERw9UuzOYt8twz6edGgnD1UolCkM0UadiCNWdw
         AjDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="rY/2BdHJ";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d62si292245pgc.5.2019.03.17.03.44.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:44:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="rY/2BdHJ";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8A1AA2085A;
	Sun, 17 Mar 2019 10:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552819464;
	bh=vatU34bgkFRk528lJsVnkIzmo9gBWA3LU2QlaKSNmwI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rY/2BdHJ5HyyOqzdcHqRE6FWJwrkVQE3tjhuWG9O6kcJHVXKqolDTwJ6P46ev7fWN
	 pOvEzQpcd+dJxZ0q4J+IvcyGESEZyf/IhUXm966aSZw/MkzGyCLS5hQxWs0kozIGJz
	 L4JkycdRL5C2H8AgwGXqe7tXAPPqtM7LgdvobvzQ=
Date: Sun, 17 Mar 2019 11:44:20 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: Remove unnecessary
 statement.
Message-ID: <20190317104420.GB16257@kroah.com>
References: <1552809479-10739-1-git-send-email-digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1552809479-10739-1-git-send-email-digholebhagyashri@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 01:27:59PM +0530, Bhagyashri Dighole wrote:
> Remove unnecessary conditional statement.
> Detected by Coccinelle semantic patch cond_no_effect.cocci.
> 
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/comedi/drivers/das1800.c            |  8 --------
>  drivers/staging/rtl8723bs/core/rtw_cmd.c            |  4 ----
>  drivers/staging/rtl8723bs/core/rtw_mlme.c           |  6 ------
>  drivers/staging/rtl8723bs/hal/HalBtc8723b2Ant.c     | 12 ------------
>  drivers/staging/rtl8723bs/hal/hal_btcoex.c          |  2 --
>  drivers/staging/rtl8723bs/hal/odm_DIG.c             |  3 ---
>  drivers/staging/rtl8723bs/hal/sdio_halinit.c        |  5 -----
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c      |  2 --
>  drivers/staging/rtlwifi/btcoexist/halbtc8822b1ant.c |  3 ---
>  drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c |  6 ------

You changed a lot more than just the rtlwifi driver here in this single
patch :(


