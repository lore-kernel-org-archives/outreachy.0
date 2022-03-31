Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F897B
	for <outreachy@lists.linux.dev>; Thu, 31 Mar 2022 16:28:23 +0000 (UTC)
Received: by mail-qt1-f180.google.com with SMTP id a11so21823708qtb.12
        for <outreachy@lists.linux.dev>; Thu, 31 Mar 2022 09:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=dL+N2rx1M3vnRUQ7/khrL/POhEl352eAwz5Pf5ZC2A8=;
        b=gZhSRZZMV16CnmqC353rKDxTqgJX7H+hdfwKzhfN7QiEjbHxqGxpfJ7TI4xgrlkcP/
         IOYP8/Eg38uyG/gIVxVqlwMDMeNTrAQvC8Vc1eiC2RezZTNPHI91oLiKpEk+8rdAelZk
         waIvewY0YT3SdrZD8iimWOTy8VzcKII8g68Kl35+RciKtXyUkINBGskTFLelO/4eY4QG
         mxCskxOf83gOoShmwC66rIH5SWtgK9KUf8OW0rd4TeyoecN+YO4wI8WPsBAm6/gcdrF0
         0r9hFHPkkFaoKl8DadWlVHHwsYX7vY03B5WK6dPeHVnxbcok8P6GcWWiZ1vCr2FWJ4fL
         oNaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=dL+N2rx1M3vnRUQ7/khrL/POhEl352eAwz5Pf5ZC2A8=;
        b=YKRYH+8LbvIA5Z5KfpbWEVUlxiobGqDtvrvuW30bZJMiRXq3RgH5oLWZJg5Xh7lBUZ
         IE6LMjDJYobNwLcHxyElhs54p06dvj5EN3O4piIxEPs4jz5TayRgRwf3vvAf1JSf9pXq
         7o4rkBCkeFHXc8D+IEOW2ctJ8TSdd8Dx2bfkSx7pktLcIlr5A8mERWKkoJhLKpqKI7ps
         sJfsb3be2ivvaep8dY4p0b9/jjqP9ujERynzG7CunxsJy8RITjCaPalHCRN3eQcdbhrw
         dRIMQaDB3bxohHswfqYC7tKa0ZAkGcgHFrkNAjxAwkEmiKsDQ0/CaIcta4gKrkR8crWq
         1ErQ==
X-Gm-Message-State: AOAM531wA7ZihV3LgmL4nyj89oDnHc44qjMo2tojkF5GQ2d0k3wrcKGD
	I5I3We2p1SPH4VrrsML4W80YbMMuMt2eMg==
X-Google-Smtp-Source: ABdhPJwCz+7y/qZEfyQ7j6Lww0HgTOXF6PVDNtJ4WXuTGGdoHs5TlsRkHzBfxdJ0nZVClK4PKKYaqQ==
X-Received: by 2002:a05:622a:10d:b0:2e1:db41:66d with SMTP id u13-20020a05622a010d00b002e1db41066dmr5150556qtw.670.1648744102099;
        Thu, 31 Mar 2022 09:28:22 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([4.34.18.218])
        by smtp.gmail.com with ESMTPSA id u187-20020a3792c4000000b0067e679cfe5asm12429313qkd.59.2022.03.31.09.28.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Mar 2022 09:28:21 -0700 (PDT)
Date: Thu, 31 Mar 2022 12:28:17 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: outreachy@lists.linux.dev, jhpark1013@gmail.com
Subject: make mrclean for each build?
Message-ID: <20220331162817.GA1374158@jaehee-ThinkPad-X1-Extreme>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Should we be doing `make mrclean` or `make mrproper`(probably not this extreme) to rebuild after each change?
Or is compling only part of the kernel (as it says in the outreachy firstpatch guide) good enough?
I think the latter is probably fine because we're working on one module at a time, but just wanted to confirm.

Thanks,
Jaehee ("Jay-hee") 
