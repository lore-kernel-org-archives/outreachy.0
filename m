X-GM-THRID: 6889129421220872192
X-Received: by 2002:adf:f1c1:: with SMTP id z1mr7777692wro.331.1604000807074;
        Thu, 29 Oct 2020 12:46:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6886:: with SMTP id d128ls483963wmc.2.canary-gmail; Thu,
 29 Oct 2020 12:46:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzy64lObZh9QTv5Xi2LkKO+lXZDKb8e/tl03nyOgFb9peIT9cDClBLSEiRGMBWkLL71EUSv
X-Received: by 2002:a1c:b402:: with SMTP id d2mr556626wmf.128.1604000805242;
        Thu, 29 Oct 2020 12:46:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604000805; cv=none;
        d=google.com; s=arc-20160816;
        b=vjLnlZw0T9UZvj25VjW4n9InNVhOcam5dYEhNGDpW2nyEHjgPGM72EHx+1BPtBnWnl
         byFm6cy3Sftp311Fjqg0fckd3xER/FdeDS7dXw+unZoxsw6uiIzw7IjvtbuFonxVhLR7
         BAhC0Vwd7gwvjbvQD8l7c+BStuyapXQMLxtGzyA7Heh0AKV9LRfcn0e13SOY/N80DEin
         9vi5ZggOGwgIqYwfBjdtrVFIki/8KFWsMOA81lQ0/i9RBlTaUodClLcmARTDXRgBEsMS
         +e5P8qb4fHshyXjYdv9l3XglUFEu18G+TWRhixeJOR0kbOifkQW0xfKco9tgMvDnqo/l
         Be0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=N0Fsw1dTotaC9kpRvD4R7ib3+U4qEV6Dk4SiDUBFTmQ=;
        b=GktdOHHzvSkp423ESgo2Mi0diqy7s94/IH3sHy03nz262UWO9wvMSKQBLUp+eV/NVA
         wzwC1/mskZP66+QO0s/g72Ww7PTte1Lp390NO4WHzByDsSf9IpKV1C3owDhQKL0CjiLo
         xLWOLfJODrssJOWBG95WHQVFAkcvvZEAKdS1SXHZcnZ3Dov44k2w8rRzsqkg2XhUIt0i
         QXe44CFAw8wnwqVu9L+znyUzcSjjU6E1mIhodC0+zRhYcvkJT2jpP8Z30dnCsFhNZzlQ
         XE2ibfMh2HvN1oVPaAtr1oW77RF0ScoqM/qCGkcWQq/jM9ldyWj1TtHsFmTYRvC/jMES
         9qDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=D6uCIG9U;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id 11si19369wmg.0.2020.10.29.12.46.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 12:46:45 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=D6uCIG9U;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=N0Fsw1dTotaC9kpRvD4R7ib3+U4qEV6Dk4SiDUBFTmQ=; b=D6uCIG9U+mvMTL0pdMv7MyFtgw
	6kgDhqV0LzvV1+87vOz4CGUBagezADMx97fKVgsRUEzs9xpanJ0hL42jmU33I0ZSIXFh9SErZxXci
	g6d/I0/XGye690IV2JQgaJfa9QacFdoUQr7/8ne8xouIJOPOrpGxZZSMtL4psECdtP4DYmhDT2Jxh
	zWyrjNfogKgf+k3LybN137yL46bqvSsrCQtx1UDLli3Z3szoK/muttjfI4DNM8segag2MBeP3GA15
	qhm4GCbeAZcl/lD1acMJ2dfKnioowBXM7GBNk1o70iuMTRQjatEM06QKlsaZPSWT1CQQ4RL3/NrCY
	6NTMgmjg==;
Received: from willy by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYDsh-0000Sg-SV; Thu, 29 Oct 2020 19:46:43 +0000
Date: Thu, 29 Oct 2020 19:46:43 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Amarjargal Gundjalam <amarjargal16@gmail.com>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: rtl8723bs: hal: fix
 position of constant in comparison
Message-ID: <20201029194643.GD27442@casper.infradead.org>
References: <20201029194029.141165-1-amarjargal16@gmail.com>
 <20201029194029.141165-2-amarjargal16@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201029194029.141165-2-amarjargal16@gmail.com>

On Fri, Oct 30, 2020 at 03:40:26AM +0800, Amarjargal Gundjalam wrote:
> @@ -1670,7 +1670,7 @@ static bool halbtc8723b1ant_IsCommonAction(PBTC_COEXIST pBtCoexist)
>  
>  	if (
>  		!bWifiConnected &&
> -		BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE == pCoexDm->btStatus
> +		pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE
>  	) {

While you're touching this, please reformat as:

	if (!bWifiConnected &&
	    pCoexDm->btStatus == BT_8723B_1ANT_BT_STATUS_NON_CONNECTED_IDLE) {

... fixing the name of that stupid constant is probably out of scope.


