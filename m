X-GM-THRID: 6999830140356132864
X-Received: by 2002:a05:6512:3f90:: with SMTP id x16mr28059207lfa.518.1629798628144;
        Tue, 24 Aug 2021 02:50:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls3271559ljf.7.gmail; Tue, 24 Aug
 2021 02:50:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwD6h44gnamSJxnoExxKbunT1bTaREcFySF78C1/4babA/D3vAnXFf5MI2EpN8ebsFnxLMc
X-Received: by 2002:a2e:97cf:: with SMTP id m15mr21181521ljj.125.1629798626103;
        Tue, 24 Aug 2021 02:50:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629798626; cv=none;
        d=google.com; s=arc-20160816;
        b=lkpDu+PttHIxEhumierxr/d8qvPtgvArlUN38aVUk9HIOrLK16qnDMD3J5bAkH4hJT
         CX1Fv8VIkRjkg2I50HwtNq2jK6HBY3soboxyuD+1VeGWKUZ8AhG0dWnXreIR/sHAD+Ii
         s7ZWWjz2JKlRvKErrBZD8oY0+F8kkEcz2SaY8Y93s9c9PabBNwL1icaDJIbUYwf5+Ido
         j3UsjcY32Bv11sZE3tzklbKX3ktnMwaxxemfIMX+Z6u2G2jEhxi1hdLKPsquZFMjoQ6N
         ex4KXNYikiKtRisOKUo+TXuSPJv6cVO9QYleL4jK7m+Oo56YAVSmozGMYfWBjrAZB02h
         gunA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Mw9iPdWggvtqmtwW5eY+Vz/Y0NmAThsEIjv37cm9I+Q=;
        b=qVC6ExUmkQRN995uk2APKVD/ykOvf0j+8rM3z/Gbh7DocCmQBkfBVMHbvYaHeDJSb1
         bOffEnNvNAb8yszbgtxpf/E3kcmNrM3p9q+CI18EPMYVmsUXTV2U13IBBKdYIGc0FqwE
         e5Y1D895w++s9abAQSYXYrwBANaiaFj0yoyib7+U8ICpkHmUz3YiGPAomO+anmqlKBlu
         nX2WSGFic8zFqJYuDIkiwNTMH8+ll/b0rnUa22rvpjk2+jxoNBMvdb1+i+NRkFihBpyb
         Gm+nKTPxpg9yJiHRY504wWanQBTPM/5B/RLWFKSM+hY51fuCEW6J3fPlCaz81puRsW93
         OW5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=WIx+LZoK;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Return-Path: <willy@infradead.org>
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id c12si555555lfi.11.2021.08.24.02.50.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 02:50:25 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=WIx+LZoK;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=Mw9iPdWggvtqmtwW5eY+Vz/Y0NmAThsEIjv37cm9I+Q=; b=WIx+LZoKhCVS84CzS3K3LZ7xC+
	Z2ShhhaOtrNzCrI67WDXuz9msUIKx5r1g1uernjAahPZeX896QZVQOV9Vvp9Yyl/emayU6wiIkBi3
	fgtYwHS+QEepDsQc/1UQrcAfczCS4QO3NkUkKGb5q760lMLRQBeEvNqpNRRMEixtncWrBhzwXOdM+
	TdlDDnZ+ayzxwJRMYLqCwQYawJAw77RRfIeAhTpbEyI4Vsaxf/etrWvIdaDxlLGfWmZmJHrtrL3bH
	XXOORgHuyF2ETPNyz2Gkh22kTHsXGfHsZGVo1qWTx+pVRZe8xzI1gKqxQZxCiDXIB4fqrTeAwWZx7
	hWJi98Gw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIT3W-00AryF-CX; Tue, 24 Aug 2021 09:49:29 +0000
Date: Tue, 24 Aug 2021 10:49:18 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Tawah Peggy <tawahpeggy98@gmail.com>
Cc: Kroah-Hartman <greg@kroah.com>, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] [Outreachy Kernel] Staging: wlan-ng:
 cfg80211: Fix Lines should not end with a '('
Message-ID: <YSTAnuoGF4zuAFrg@casper.infradead.org>
References: <20210824031551.GA80985@peggy-InsydeH2O-EFI-BIOS>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210824031551.GA80985@peggy-InsydeH2O-EFI-BIOS>

On Tue, Aug 24, 2021 at 04:15:51AM +0100, Tawah Peggy wrote:
> -			ieee80211_frequency_to_channel(
> -				request->channels[i]->center_freq);
> +			ieee80211_frequency_to_channel
> +				(request->channels[i]->center_freq);

This is the wrong way to fix this warning.  Function names should not be
divorced from their arguments.

