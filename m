X-GM-THRID: 7018981355604148224
X-Received: by 2002:a05:6512:b21:: with SMTP id w33mr22476344lfu.447.1635251641834;
        Tue, 26 Oct 2021 05:34:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4a1a:: with SMTP id x26ls3482684lja.11.gmail; Tue, 26
 Oct 2021 05:34:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwLG+UBm/BBeoa4hrBZFkJtjdb+iH3NtfnVw28NhxoXOCaX4fme689tEX0TOiB9EEvDI0ds
X-Received: by 2002:a2e:aaa8:: with SMTP id bj40mr25867928ljb.47.1635251640275;
        Tue, 26 Oct 2021 05:34:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635251640; cv=none;
        d=google.com; s=arc-20160816;
        b=zKjotjPXcR3DZewl/NhweUiq6Mrz4AVx+oMwjhbIgUUsXWPrk5pKD897Uc0MPWhKM5
         +Hw3Oowj9Q8Z77C23eTfpkCCCQVuutS4RW4xyISZsrOU/uB2cjP3aSVDOJu5Xur9NgKX
         oF9KWGtK74WmN+cNgqRRVRXSc4pD+jHpi76/nQP0JRnkVJB9/6PhVxisxRoyzwbBEEhp
         49J6ukf1PUjv0/L9pS7O90CRenfZ0fAJ0k+nbfgiyDmiVIqhknirzLOhLPQlDtKnq4aL
         DSb24sw66D6ca39oTZFZiPCKHPclEbACVfgywKUVPJKBEngg6yf/DMsmL5udr0sJZqoQ
         tnlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=Nl/z0xNlUP5zuxRJqLwN0rusVgSeDr3FSPxA1N0jaBk=;
        b=w3qB57O58ii+IJ3JeWQDZhNSTj5TpSWIMk69mdPL1cZort0Hx6hiLV/7JD6BFe8RNn
         CJfH0cPN0/gR0J9W8U+1nl+35Zz3vZ73v0GEe1QzTIz4/Pc9q++OONcWEjaNAoJsebE2
         D5isixSbyVxakFTgfIhYUq8M7QxNnCMyz+DDYHc+Iw8X91IsObx7MLQ3+7hDg21PEdiK
         efzvWCWE2G+5SM5RV6UbkJ1fZBtlWcWQPbOSdDUA51cuXqFFZuOHvZTYLW9/CEB/l4NJ
         CJgNgig47UjsaqFguoqIPhsBFahjCwKdiIPN8tIwfq/LYqqxCaM+d85eh9rvIAePWs7z
         iG7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=IGas1wAy;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32c as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com. [2a00:1450:4864:20::32c])
        by gmr-mx.google.com with ESMTPS id f11si1083870lfg.4.2021.10.26.05.34.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Oct 2021 05:34:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32c as permitted sender) client-ip=2a00:1450:4864:20::32c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=IGas1wAy;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32c as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32c.google.com with SMTP id m42so13954611wms.2
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Oct 2021 05:34:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Nl/z0xNlUP5zuxRJqLwN0rusVgSeDr3FSPxA1N0jaBk=;
        b=IGas1wAyNHsNKdrzW1bE1YH7rn6p36Ej0su5DUEqXtmq0CSH14blwbVHLkXQVEeUHk
         VLgHT0ZpnBFDLk24OBQ0vn7pDJJdNUdlYtH+gyx093umreUFu0MnL/iJUWLgsOR8sJUQ
         sKqt3nq0AM2nd277hc56dWl0kLJ+tu0G3NVfBIKB8+q6D8F2k0DNNavXaTUWWeu5SZOr
         lmWV3WgARoygBHwz1ClZ7ntmeXKOUMLEatsYBMFz8iSV4ssKFjDHxRkgGMYxOXshdY0T
         ja9U64JGjXzSdOsL93tKcEtIf2lTGzXlJZaFqnQpru1J+YzOHpybsufIPUjcxu/ZCFQw
         w5sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Nl/z0xNlUP5zuxRJqLwN0rusVgSeDr3FSPxA1N0jaBk=;
        b=y+czAtqY5ngcJFo7Lict8ouiBr1FezGqI97V5H089q7G/ffQuxUAEsisAj9n73nGzY
         QCyka642dZTROZXcm8FOVnY7jFI3y+LPmWhlxTIWuhkltbwfD+pUgMGqxfGTF5MGiaoD
         sNNtYeWE5JvD2S1094GDnr+131VlXDBDpMw7PDJN+AnIx9Turm4iPh60DtMwuRDGLjql
         7lWJoTT/PgTlVku7G2EakC5kq9aFTSh/H5CGKgtjyyug3wX+Nm3+6qMBgiMQdPlOB+R4
         ZY3LvarR/lfCSm8SC6wwHnj/dnX32Fm1ORfuaqCXOYedRurgaj4hhAfLHrUmU5MzO+fx
         0VRQ==
X-Gm-Message-State: AOAM5328Q45KJ61pAd2ez/hRbCjtXZ0MRVU3KauUb7rvfKvac32a2T8T
	7MZnVECRf2pschsM6XKjD+0=
X-Received: by 2002:a1c:f316:: with SMTP id q22mr40642601wmq.55.1635251639621;
        Tue, 26 Oct 2021 05:33:59 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id h2sm7963502wrv.54.2021.10.26.05.33.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 05:33:58 -0700 (PDT)
Message-ID: <9816b2e5cff92d7d96d77ae9b14d0240f333ac69.camel@gmail.com>
Subject: Re: [Outreachy kernel] Help maintain the First Patch Tutorial
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Date: Tue, 26 Oct 2021 13:33:57 +0100
In-Reply-To: <20211025163004.GA478658@alison-desk>
References: <20211014174207.GA426328@alison-desk>
	 <9bb37f004a66b22114572ada1a3d20def81fbcff.camel@gmail.com>
	 <20211025163004.GA478658@alison-desk>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2021-10-25 at 09:30 -0700, Alison Schofield wrote:
> Thanks for the update.
> It seems that the original was lacking the fill in the cover letter
> step...at least in this section. Going directly from format-patch to
> send-email on a patchset would send an empty cover letter.

That's a good call. I'll address it and send an updated version
tomorrow.


Thanks,
Karolina


