X-GM-THRID: 6620347424824098816
X-Received: by 2002:a6b:8e51:: with SMTP id q78-v6mr18067003iod.33.1541446095403;
        Mon, 05 Nov 2018 11:28:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:6756:: with SMTP id u83-v6ls2420613itc.5.gmail; Mon, 05
 Nov 2018 11:28:14 -0800 (PST)
X-Google-Smtp-Source: AJdET5d7HwxOHJCt4pdbCgaI2eac5ziADI/kxlxXhv7BesArDgQUW+uVE3Ny5mWxWs2lYgFdadrB
X-Received: by 2002:a24:59d1:: with SMTP id p200-v6mr2284133itb.10.1541446094501;
        Mon, 05 Nov 2018 11:28:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541446094; cv=none;
        d=google.com; s=arc-20160816;
        b=F9pTwVuQd7T+ntgaJqhbg/r1sBke7v5HEvk2r+uSHNGw6SZaWCRC6diZaen8L7vtTm
         9BlTMHOndrNKmc1u8eQxvpEaNRBvVzOjUcMe+KCxYOKir81/SWzSbAgyuh5Do6Ov39xL
         LJ5rYCv04kDchROJm5LERilLbR9ZNv/SnY0VacnnDxx3uz7oIrN1mwcAIFwtBeNYssHd
         Vzy/IR7TCFKHrvSHTVo45FISvwOSRIFHUiz3CEe0MRgYynRuEhH1GHoQdDYr02afafOo
         aa8VHG64l0jyrxQPPVhZfVrpZ6camFY8/kKN2VygwD2f6MmTC9eaSgBUX+TMzHcNUH5H
         bVmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=44XyBazMbJs6rd3ISbxRQGbNekpC+vulmsNzx7XvEkc=;
        b=VG1a/c3e2wrhT2K3XKgJBee1o/QQPQ+EealptGu6GuV43rQCcS29KLoDeHjeC64Sal
         k1/t0kt7TX1jk4wbqjlrjG55zkr5nFhkBtRpvJkGSqD44VaHPTxaDpN9pW49GpYnYo6W
         24fBnQ5BgXV1fRxDkEFl2SOa5aDgkdRhvRKZswQWsGuQ5v1H0sPdvySeDcx7j2Fpbara
         dvYl6BWiAEaAQzb91lZ4mwqZaM7s9M7avjfCgOjkUjaoPhuQ5JXqo6vNNtBDR6zNemZH
         2ddFhbuVUPomQKN2IWN+CjbA/jB4fGUBHCd9ghO7bJ5nQyblSeHMYIYUtnzQjg0BUumq
         T0yQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uSVYQhaH;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t201-v6si77804itb.4.2018.11.05.11.28.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 11:28:14 -0800 (PST)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uSVYQhaH;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id e22-v6so4895758pfn.8
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Nov 2018 11:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=44XyBazMbJs6rd3ISbxRQGbNekpC+vulmsNzx7XvEkc=;
        b=uSVYQhaHcLOAjUdX/Byh8VaG9+DqWvPZPCMHVzXF0/THzUygdXNL5/3au3TqC760pj
         OgJY2InNBYDBIkaZ+aEhSy5dUBVrh/qWA5SpvRT+6rVcgawKUBdOOIYiN4ZIaZ9lzs+9
         GbsLUdeGhU9neBxGdwg2dJ8pwcKbhsmQFBc8GZOwTt8wXi3wwj6BcudhNU6TbKtyYn1z
         rYyQFppAmZrh2+Z4CvzNZMUBdIAnycjU2R9RP30VB/X4V7tf76PpGmp3tQI8zyvpnfp3
         gJ1471hguhAaf+QJU3U/teH0DAEO4S6sN84vhSFVQrmMdRrLZXgPs3SW5oEsa6FL/6ER
         iSBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=44XyBazMbJs6rd3ISbxRQGbNekpC+vulmsNzx7XvEkc=;
        b=buQz0PJCYYcU2a2oRww7C/RzyKIAkk3qWATx19aqHxDvKu4lRJ+2XrqoB7o8Hkx8UO
         zfIs3Tv4sCTOQp8mKtLNQUMexf7xFQ+Yec9RPrC4G10mgCtzBtvrZw2dmA6iJKRE5pYh
         NSdMlEco5gsaGCzDKhaTU7qT8+xfeTswZanZdmioRXqXiTAWqZvXRGxIQa8mJJyfy+2b
         iNfzc45fKv6EioA2bKax/tpMnl960ePqwxDO9r6UQlotHWNmjR/Auupu1C1z3pGR4pzd
         pNCuxHICIwItzzRMqOWpLvXsHDl335kCejlStsKF5ZgT7Mi5F+1IXXzr92zMcTslnVYn
         b7gQ==
X-Gm-Message-State: AGRZ1gJQ1kySHWHJGs0WI9gRf/4DX08zujxHI4uSxc5it6rmqpZoopCX
	Ni5+dOhP0SsuFYsYa9zJaKw=
X-Received: by 2002:a63:f65:: with SMTP id 37mr15165204pgp.238.1541446093576;
        Mon, 05 Nov 2018 11:28:13 -0800 (PST)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id t8-v6sm44630156pgk.36.2018.11.05.11.28.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 05 Nov 2018 11:28:13 -0800 (PST)
Date: Tue, 6 Nov 2018 00:58:05 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
Cc: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	Outreachy <outreachy-kernel@googlegroups.com>,
	linux-erofs@lists.ozlabs.org
Subject: Re: [Outreachy kernel] [PATCH v4 1/2] staging: erofs: Modify coding
 style alignments
Message-ID: <20181105192805.GA10782@himanshu-Vostro-3559>
References: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541443947.git.digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b14ab748b6c00632bb2234000d96a7e1912e2b1b.1541443947.git.digholebhagyashri@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Nov 05, 2018 at 07:02:51PM +0000, Bhagyashri P. Dighole wrote:
> Fix coding style alignment issues detected by checkpatch.pl
> Matched alignments with parenthesis.
> 
> Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
> ---

Did you notice identical patches this time ?

   1     Nov 05 Bhagyashri P. D ( 177) [Outreachy kernel] [PATCH v4 1/2] staging: erofs: Modify coding style alignments
   2     Nov 05 Bhagyashri P. D (  98) ├─>[Outreachy kernel] [PATCH v4 2/2] staging: erofs: Modify conditional checks
   3     Nov 05 Bhagyashri P. D ( 177) └=>[Outreachy kernel] [PATCH v4 1/2] staging: erofs: Modify coding style alignments

Let do this again, with v5!

Add Gao's reviewed-by.


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

