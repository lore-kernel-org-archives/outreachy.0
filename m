X-GM-THRID: 6608144919941873664
X-Received: by 2002:ac8:31b0:: with SMTP id h45-v6mr4367365qte.34.1538655167367;
        Thu, 04 Oct 2018 05:12:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:25b3:: with SMTP id e48-v6ls1347300qte.13.gmail; Thu, 04
 Oct 2018 05:12:46 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63Bi44Ju5QlppYIjDQDa/Jqi3uccouyiKygHm39PCu5vowPwbcir+JIwM8zJqV3CriBx9NO
X-Received: by 2002:aed:23ac:: with SMTP id j41-v6mr4362624qtc.5.1538655166887;
        Thu, 04 Oct 2018 05:12:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538655166; cv=none;
        d=google.com; s=arc-20160816;
        b=VANSTjN1liuQw2fK8Qmr9a95PDsIr/ApEL6nxR6YSf/WQAS7zpEKT66CwpXLTFTcvk
         mkgGZ2Tf7jbMNPNme2bkThGMxd70I+euMUWbhyUIdVAJRWB399f6vnY54S6nT8pfLo+u
         IRgRX3PgMgJGC8ZB5lT4taPHCahqtNduD25LvVUUS1dobso+tnKhgP2mqY0nuGqmStPg
         fSaavPcAAT4bysglHOaMmXsdR6bBvPXMWcgPt3Q26Yuqf297aiS53HFQqnddwMtVswQN
         fbT0baeb8HObcQYMDaQN9YXZPYEyfI+nhWIG5wsfEUm+YVLKMzZAxnvgwcxN3LAEcvQq
         AUNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/y4SfLrff4StZJ3kgQ/MRN3CJFVm52r55PSIaQ5ETUU=;
        b=s1yGvUcOOqNQ5GfKJ/aw0+w/N/mADrvr575zhe4tJNPtnm5gOKt6NgnDksQL8IylcQ
         sk7QK3FEXShOepazbIaV4HNLmGyXqd9CngCtQH5grwGp2sh3z5buoP+t0UK910oPAN33
         7twBUlFY/NoYbxNQcizrecLGiWlymgaO3zPeqoCwskGX7SwG8sS/gQ0kwTpTLBbyzmba
         gDGtnBsGRD75R6VpHInwCzgNvZZGintWv2uQFJ+peKw2N6RD3h/VIO/Ykq9xW4w32SL8
         GqCR7wuk/LxzBpHqFRlkbe6NJj+K86UUdOdZ5Vft9uXl97II3yhuSFnWwVACtYFX6HOJ
         jgEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="k/Z9J+gL";
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id u56-v6si157476qtj.5.2018.10.04.05.12.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 05:12:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="k/Z9J+gL";
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id m77-v6so3287611pfi.8
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 05:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/y4SfLrff4StZJ3kgQ/MRN3CJFVm52r55PSIaQ5ETUU=;
        b=k/Z9J+gLBingjr+uUv6n5/x06yfh0xqq9tbEQLUdr2TcVIx9oNuv6KGEVu6aoFSna1
         kNUnTJQnLl2055g3/hqFGphV1q9s4zqTRTcIe1x2bDLnplWh0nMULVS+kGFRy4a8OpGp
         hi5XZKhT7iwhvgxkexz792m4Jb7YGrBG+qjiael2XSmo8jklieozGO47uJR4jC/76lA6
         oRazeOFQLnFQGFyy3bnVmzkcHcRkmjdPXBiBq6XXzHsTZvQXmNAoNekoxdS0RUTUu8Ir
         inYcwSh87sQ4FkEbzmS/PJz2arTL2RlgIe/Lj4IE77Q2Ksxpd1vYU+bZivWJ2TfNSymz
         Tkig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/y4SfLrff4StZJ3kgQ/MRN3CJFVm52r55PSIaQ5ETUU=;
        b=Qs28rw9zPwNE76igzoXS6whhNc5jo36Oed52M3/ns7iLJuAJv9aKEGZT4pVM+AWaPD
         IM5aBGDIJ1vShNoa8xsxPdKrQco1r/v3hv51FOx4XszsCNuhl+Csf7qBM4uAS3Ty7JVy
         jXBQ/94xFIXlXJHaxja4KCpiuHSKnwUSCgJdzLyJmV3DlJAR18aTIEPhCZuYd35G2z1Z
         B7lhTXS9A1VSZxCMY0KUxobtrmRDrcRgxDgk8Ce7P5ftX0wxJfVUah+VYKR/8/+5wCS9
         ApHW3miJAwaw/BjUpuDsrMAxRxKHJOgRQqMdRlaiW999ux3ZzwtU+hFvIPsJl4ileFlM
         VZ0w==
X-Gm-Message-State: ABuFfoghQQ/GNmgcFkYvAPyKQF+04b2gkgQ62F4NvAj6wPlM/mkki9UO
	QvC9dKev2QfAwQE3K4HrmnYOuvTV
X-Received: by 2002:a63:3308:: with SMTP id z8-v6mr1881350pgz.220.1538655166474;
        Thu, 04 Oct 2018 05:12:46 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id h7-v6sm13349476pfd.35.2018.10.04.05.12.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 04 Oct 2018 05:12:45 -0700 (PDT)
Date: Thu, 4 Oct 2018 17:42:40 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: fbtft: Prefer using the
 BIT macro
Message-ID: <20181004121240.GD24641@himanshu-Vostro-3559>
References: <20181004113518.GA8855@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181004113518.GA8855@armorer>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Oct 04, 2018 at 05:05:18PM +0530, Mamta Shukla wrote:
> Replace all occurrences of (1<<x) with BIT(x) to fix checkpatch issue.
> CHECK:Prefer using the BIT macro
> 
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>

And you forgot to Cc Greg...


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

