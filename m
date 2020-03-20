X-GM-THRID: 6802515514721566720
X-Received: by 2002:a6b:b646:: with SMTP id g67mr8857642iof.26.1584729229824;
        Fri, 20 Mar 2020 11:33:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:d0e:: with SMTP id g14ls1727488ilj.0.gmail; Fri, 20
 Mar 2020 11:33:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuqccdBbRHBqztiNwHoXT0wfrcrNjpiDk0SDejTkBHki6U2NGv7xYrUGf2W95ZgCIPgPj/v
X-Received: by 2002:a05:6e02:90:: with SMTP id l16mr3340162ilm.294.1584729228467;
        Fri, 20 Mar 2020 11:33:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584729228; cv=none;
        d=google.com; s=arc-20160816;
        b=qWvf1Vv1tanAVmJHHHstZMf4emiKHuiNw9nqWcV2vinbj3hcdij9izTMt6wLazJlfE
         bYprWx3kdw2iz4ZnzEVy71scjra2TkJ1xbngBksHpGKQ2XTURKcqYBB34omIAFJIGVjF
         +KkKVAcCB4zS5gg0mD+xeQmp45bCMoeX+lMHs3C1/TIq4YWZrRz7BZ0ULp0wrWCoPr5r
         XBduGC7AHoEBdT+eXgbh0vgmoSEfM+ton0DUAI6JvBtaN+6SYb0uxVEgf/j/3ec04Vsb
         eHN4kbnNTwmj0NCy9dCM3aAjzVgcGVvJe8wt9Vps/PbFrZetRnYXplrHVIHjPBEvkAQP
         AtOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:dkim-signature;
        bh=xGPd8zeciNNjuF0gH6a27bdpOIAlYgBXTYdEMi1lvjs=;
        b=WdapbmuGXBVSssWj7Gjr4HPPdlWz5YYfQdd1edmx8sOct/hemxDUwBTyXkmzgLI59W
         iPAKPIfG1Td5n6k5221Fh4qCC25ZTUVfWrBzgPjjdre/vteTlj4aiXw8syWwq4r+FJiY
         g2JA9L4KaMO+rPhHQ/FYNnnPgLP5tDBeIVZffjGC5NlDJylMnUOqnQllVkzPTWOHmNuL
         GSWQKdzTzoThofXUbMLTv68cu2/C0bEHy0nbTkhB1Zy+UecET7mD3QOlrZ9KWnG5mcK8
         eE0LX9zLfygHtc03WV4TkJEbo762iVLcyT3wxJ/OjLK31i5b0ch51A2p9XH7B/SI1NIn
         sIPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=so5fGr8m;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com. [2607:f8b0:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id v13si383466ilg.4.2020.03.20.11.33.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 11:33:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) client-ip=2607:f8b0:4864:20::32f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=so5fGr8m;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32f.google.com with SMTP id w26so1055652otp.8
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2020 11:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=xGPd8zeciNNjuF0gH6a27bdpOIAlYgBXTYdEMi1lvjs=;
        b=so5fGr8mcPihbZ9zLxDLKggAtF0exJevOF5Y1nWwtVDrBUHLEqJcWytgeJ1hDT+Zbd
         2u2gLnFS/KWVGQbMRN9rnZ4skb8GgOjXWVUYE8a48AnLHkIxWgfQMHr4/SoZv//Qynl3
         FnrXHV/NN6txQyFEE4K8CFyTnSSWrYX3lFnLSZCAsLzeeAMsz5dtNmFbI+RyPw/70uKg
         7xuqyWctLmE8pA+Tb6O/rXsFOKR1+Z0BpbF38k0KhZF/Swpjg2a0ZD+Kouyb1sQJWPYm
         br9RfiuV1C1AGsp/PyBIr9RUuI5koS7RvnQaTsrzdAi74cvB6d5b5uR5scu2xBJapqW0
         xHvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=xGPd8zeciNNjuF0gH6a27bdpOIAlYgBXTYdEMi1lvjs=;
        b=LwkFwhNMkKnYvgcRYWqKpLn77nEC+cphR0TWlEOR5zr1k9DlLmr4WJ+d/YJUpwAxej
         HZsnpmzVr2ICndXXdKt5w8Z78bW9vLiK40HxFrk5axNVk9g1q3M+DMFToZbNuGewRwZ2
         3aLzbnY19Y5db3WrqntVQLDJ/QJ6UANYCzPc1Ety1rxeXCsxMfpItPqXGvMg9B/1OBHy
         iL7KBj3lWBfozjaOmmBntbJnBoJQ/qkUN24tnSKmK5i5Y6CjgXt0/sWVBezVG5ZnES/X
         pMFOruQ+df+Cn6ME8GZj9tuSbfPOQueL/r873vYx9siZc7q5gG7aVESN8EKDI+5pbVYO
         PX7w==
X-Gm-Message-State: ANhLgQ29fNT23ZP/ce2P5yhUvMTdmdp92kevKq4kcIFvi0i1NgX1/T0w
	k4EzH2jxR7EGEqCdBjoN9w39xaDBEzc=
X-Received: by 2002:a9d:7617:: with SMTP id k23mr7518230otl.329.1584729228187;
        Fri, 20 Mar 2020 11:33:48 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from ManjaroKDE ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id k132sm2282703oih.9.2020.03.20.11.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2020 11:33:47 -0700 (PDT)
Message-ID: <024f9fe964fce4a9ede1d58c87b7bb75c6a35ac2.camel@gmail.com>
Subject: Re: [Outreachy kernel] Outreachy patches caught up on.
From: John Wyatt <jbwyatt4@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Date: Fri, 20 Mar 2020 11:33:41 -0700
In-Reply-To: <20200320141418.GA707555@kroah.com>
References: <20200320141418.GA707555@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2020-03-20 at 15:14 +0100, Greg KH wrote:
> Hi all,
> 
> I'm now caught up on all submitted outreachy patches that I can
> apply.
> 
> If you have not gotten an email from my patch system saying that your
> patch was applied, consider it lost, and please rebase and resend it.

Hi Greg,

I just sent my patch in ~10 hours ago.

Do I need to rebase/resend it?

If I do, should I make it a v2?

Apologies if you already answered this earlier in the mailing list.

> 
> thanks,
> 
> greg k-h
> 


