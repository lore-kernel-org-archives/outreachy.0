X-GM-THRID: 6528718721660223488
X-Received: by 10.25.43.133 with SMTP id r127mr1116265lfr.22.1520264438470;
        Mon, 05 Mar 2018 07:40:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.148.3 with SMTP id w3ls1721375lfd.3.gmail; Mon, 05 Mar 2018
 07:40:36 -0800 (PST)
X-Google-Smtp-Source: AG47ELsEdJhPsQVgl9gsj0tEq4sZvoH7elsJwl0tmdspkD8Y7IJdcfsD8c07O0y/HuhQzVCd+efZ
X-Received: by 10.25.80.68 with SMTP id z4mr1064998lfj.31.1520264436437;
        Mon, 05 Mar 2018 07:40:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520264436; cv=none;
        d=google.com; s=arc-20160816;
        b=OzI6ahHTNdiZqwQPKtymR17QvqVUGGrAJwqzpTDL9Yfw3XkdEv63czV/8behGY1vTV
         03tagHBem79i2/sZAVuSpeW4F13rFWVTLCTWrmmQHsj+ap2vXqROXwf3plbIJRh9enRm
         4JOP2GqIhwkRA6lk1EVIZN/iHB1ttcc8NClCDmyS2yDmE85iuy0SF0smOokONdr7z9QP
         ahgY9Zt4F/F45FK+4cAnikkitEb8eeZQKvqBU60DrlwTi1jhx1RT3aQoq2MTvgZZwPQD
         FN15XDvRE7XuzS34/KGfYmeyzzRB+eR171hlV2suyTKTzIImY1vh5kZKm9lxt5szZoPt
         qZlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:arc-authentication-results;
        bh=4oRytX3hoD2dzJjrX49NPjYyK0HXFoD3F0cuwUF6bEA=;
        b=ipISREUAPX3951WAD35bcN7GfCPQFkoFwOePtfstzmZiz0PR/taBbLnEkjizgRSoLR
         zAfRFhbPA4L+M2Y03LaOCjRZc9hg400Klkyw/bZslzUAbu4bB2ta1EH7j30Sat9xxOvh
         5zmYUmRtHDffmQ2In+uRaCaAEtOY1F8oArnrD6BsFGEpCC6QNTKmpMCh0wZLHPIxY2SI
         jmnBrO3h9TSKfj9WucAm67ia4zzE8oCCMh2Zutqg0euvn8tihvUFtSjitoA3zYzDCsWT
         9NGJObP8AfsCrpyLVMMzAL3ZGnH61s2EaRXmUJ1fOT9usu52khUWMkCqb4aXwjUkWcng
         uJCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) smtp.mailfrom=richard@nod.at
Return-Path: <richard@nod.at>
Received: from lilium.sigma-star.at (lilium.sigma-star.at. [109.75.188.150])
        by gmr-mx.google.com with ESMTPS id s12si520390lje.3.2018.03.05.07.40.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Mar 2018 07:40:36 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) client-ip=109.75.188.150;
Authentication-Results: gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning richard@nod.at does not designate 109.75.188.150 as permitted sender) smtp.mailfrom=richard@nod.at
Received: from localhost (localhost [127.0.0.1])
	by lilium.sigma-star.at (Postfix) with ESMTP id 591E1181A43E8;
	Mon,  5 Mar 2018 16:40:35 +0100 (CET)
From: Richard Weinberger <richard@nod.at>
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: boris.brezillon@free-electrons.com, David Woodhouse <dwmw2@infradead.org>, Brian Norris <computersforpeace@gmail.com>, Marek Vasut <marek.vasut@gmail.com>, Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] mtd: nand: Added spaces around ('=' and '<')
Date: Mon, 05 Mar 2018 16:42:03 +0100
Message-ID: <2872216.aoWXzO2rYL@blindfold>
In-Reply-To: <20180303140233.GA9634@seema-Inspiron-15-3567>
References: <20180303140233.GA9634@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Arushi Singhal,

Am Samstag, 3. M=E4rz 2018, 15:02:33 CET schrieb Arushi Singhal:
> Add spaces around ('=3D' and '<'),  to conform to the Linux
> kernel coding style. Issue found using checkpatch.

please fix real issues. Coding style fixes to existing code just add too mu=
ch=20
churn. Except for drivers/staging/.

If you're looking for a small MTD related project, I can offer the followin=
g.
Cleanup all ubi_assert()s in drivers/mtd/ubi/.
Some of them need to be transformed into a meaningful warning/error message=
,=20
others into a hard error, such as WARN_ON().
Review/understand every ubi_assert() and convert it.

Thanks,
//richard=20

