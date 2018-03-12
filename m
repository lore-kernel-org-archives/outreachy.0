X-GM-THRID: 6531959707081375744
X-Received: by 10.99.108.137 with SMTP id h131mr1451841pgc.10.1520844632934;
        Mon, 12 Mar 2018 01:50:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.82.199 with SMTP id z7ls2676129pgp.22.gmail; Mon, 12 Mar
 2018 01:50:31 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvs8oJMqLBqEgxt6tOVKyawN/KZg6m98QT/Jss7lDrcvXkic49fyUfzllAiNCvDHOqqNHL9
X-Received: by 10.99.119.66 with SMTP id s63mr1428068pgc.159.1520844631649;
        Mon, 12 Mar 2018 01:50:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1520844631; cv=none;
        d=google.com; s=arc-20160816;
        b=pMSC4dKfx5D4kgo3op37Bh23kQ0vOTfqvTiPzlOfd0OQVaEwd+aD8i+R4ozXJBMjQU
         y3zGnmaJRYeJgzcrGEME6p/jQfW1fQJOoOLxvoiOxr7VSFPWaj8/FTSEHjkAO7sLGY2m
         mzQwR76P3wCyyp4/bgowx+LHLcHyz7uexLlak/YPofwZ0M1E/3qIVBsbqzAqrNDaudsu
         HClFe+OphibrtP1MPmplSTrh0lOXL9WpqWdCh+yfMAnXTPhR3rQF66DWDA69p3dGII9n
         YgU2+KFEnntP0rfWop02OC0JrHfC9weVdAW4FfA4dl7BSKvLs4/WsbKGAEu5Wa72GQyE
         W3Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=mXSxTd+HImqmXE/hDqVyH9CU1ytPUIlvk9d37zIJm5I=;
        b=BuqGLNewxSMqoIybXGqF+eUIpQbk5z67YWaNvgk+Q416eGfM0bmsyIP/YJWxs89sQO
         YeRi0C40aOPa72rqMIlsFApcrHQuFZOnI7yADEQMGhGjxTRm+6ueHc9OnEa9VbVkXWCu
         uHDEN3QnCs8C6vcgKUYqyCllaUoXVI4RkcyUEn/LdVsh8dCxHFILbDASoXmnYcF6Yv++
         PE2ghvXoT8W6FtkS+INvDv8w0XVpDvBcwYdsY1XrCeG7B6mMtQf2jHen45X36yo8481w
         YZmAFPVBMQB6aCH3MDiDSk2mw3ExZ70lY0M2rzOjsZSqOB04pJ1/huBDSAfFP6YyGSBq
         GGig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jKpuo2S5;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c0b::232 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-it0-x232.google.com (mail-it0-x232.google.com. [2607:f8b0:4001:c0b::232])
        by gmr-mx.google.com with ESMTPS id e70si556721pfb.4.2018.03.12.01.50.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Mar 2018 01:50:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c0b::232 as permitted sender) client-ip=2607:f8b0:4001:c0b::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jKpuo2S5;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:4001:c0b::232 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-it0-x232.google.com with SMTP id u66so10140944ith.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Mar 2018 01:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=mXSxTd+HImqmXE/hDqVyH9CU1ytPUIlvk9d37zIJm5I=;
        b=jKpuo2S58XvG4sFzaSbq4vnK4N0xrzC7ozn5umPpqb4ZTbPKgvf9uzBZKtQDhaJ4oV
         84VuAXrIl1pwdpF1q+qNwpOVq8eQVkj60x/GQC3QvMBSOS5ZqEppiCZxbiq0N9p/N4ck
         Pi1KPoOrSYDl3qxHi9sP4zypR/A2Jn5khq3nJo29hBoylm8nrv+LC6SUZfL0DfFXD63J
         YI6DJxA1fqQWgZSe1j2Cw5D8Dcxwc6xZZvdqF2ZYsZKCYbTg2K0mKxYc+xsn9Nd39k9r
         2JC5BJOyn5eiTw7nELW4g2za/tsJaLLARh7xyvpylTGyYwEybV0Coy3uyl3TswjICHiU
         y6YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=mXSxTd+HImqmXE/hDqVyH9CU1ytPUIlvk9d37zIJm5I=;
        b=VrdujBQ9jvqnw98U3vMKkyrOJtryVa8Jj2r4H2bWOg+UcX7JtOlEQNntOtAz6v5ZM2
         8+YQoelPPfdmpL4WKsHJLG8BMRMVUAexohpPDRDDYwXRa2/IV3O7PXPVixQ2c2FcqQNt
         DBU/+5ZlY0D1WKx6BsWzmsxs/r3v/BAePWsZfvrdg73GwwZyaCM3yWOhY+Uamg+3KMWq
         JT+3dqG3hF7h87XPf7pFIFsjLGbB/ZwnmE1ZUueZWvMH6U4XM5ejxiuVa/TZyfnBNy3s
         rIl4Q8dfdAvCKUW4wmdVyLV/0gRyMWneky5rMg8nt3CYsguQ/QAWXiDEoqOukCarN3q0
         AQrA==
X-Gm-Message-State: AElRT7FzkKf5AT9HlyiPwSbKvaXTL8El3LIpObHzbHHAfgi4AWUYhdt7
	dxcadllbSVhRH8Bp2cisLs7JzA==
X-Received: by 10.36.78.207 with SMTP id r198mr7784764ita.98.1520844630934;
        Mon, 12 Mar 2018 01:50:30 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mordor.localdomain ([61.0.216.83])
        by smtp.gmail.com with ESMTPSA id j2sm4607028iob.43.2018.03.12.01.50.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 12 Mar 2018 01:50:30 -0700 (PDT)
Date: Mon, 12 Mar 2018 14:20:25 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Contributions Link
Message-ID: <20180312085025.GA4452@mordor.localdomain>
References: <CAC4++KBe-Jt=qSGezX7b5VO2poV0z88QkHrH5VixWkv6erZVdw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAC4++KBe-Jt=qSGezX7b5VO2poV0z88QkHrH5VixWkv6erZVdw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 12, 2018 at 01:09:40PM +0530, Nishka Dasgupta wrote:
> Which link(s) should I add for my accepted patches in the
> contributions section of Outreachy?

Hi

To see the list of accepted patches in Greg's staging tree-
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing&qt=grep&q=Nishka+Dasgupta

Similarly, the list of patches I have submitted will be at-
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing&qt=grep&q=Aishwarya+Pant

Aishwarya

> 
> Thanking you,
> Nishka Dasgupta
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAC4%2B%2BKBe-Jt%3DqSGezX7b5VO2poV0z88QkHrH5VixWkv6erZVdw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.

