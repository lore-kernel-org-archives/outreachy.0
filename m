Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140986FB3
	for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 08:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PsH86EIF"
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-9a58dbd5daeso303598966b.2
        for <outreachy@lists.linux.dev>; Fri, 13 Oct 2023 01:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697186693; x=1697791493; darn=lists.linux.dev;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7kv/V8qfqJObc3f07RkUq/pRsB37r+l7o4zt1RxkGrY=;
        b=PsH86EIFI2w8ocsbEJtX9jI4W+CXPrMz3S8UVyD88oDnykkdH670srHjm8TI5Q8PeQ
         bVxSkNF3B2RaCuNdbhBhqiROpSMRL7ioS5CbItFOlCxU3LoMchx0ozPQJK7nfWFS0y/J
         Soq8Ht3RMkdbOsbegyDiXf1MBUK5zjZWUPFhn6cuuWUBhGa4n9BHulXK3c+9a8Ur3Z57
         MKF+FIiL9JEOyG2xAyA0NrsE66p0/gbGnPPCxNqW8CJIzMOKpbwqumJhQtdcgfi0AGyk
         CmfNLU3AIeKN6RsP9AJpiPvL/t7vNNguLVr2EImE9mtNjFG2p7pX4dEaSkgoZcjtNQOt
         wlhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697186693; x=1697791493;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7kv/V8qfqJObc3f07RkUq/pRsB37r+l7o4zt1RxkGrY=;
        b=ZQ9SRLzdJ+XAcCPS11dT4vOOFxMx1QBiahdiC3i+dmFgFFg2mcJeI4CNJOqIFE94NE
         RPwyRXqwdEJPKcNp6QMy+5ho0qxZG0xr/7Id3ui3MAkOB336XxAoJmjLFqnmm+/t7qOj
         Q89OkpWBs4cGBt6og5XOAmhNPhaPZKxTXdelMzHVIo0AM80gK4KrfOAU3Zl+CKPyrLfD
         RsBXdbYrpGQijKwhu9vM0FhF+guDIKBpitTf+wYchyvCMD5OBbo3uvuOZFv/pasHFr7L
         99dz2UMHUYwqvthCT8iO57JmcXco2nkUDH2fi4582TjTdTWCKpTBb8q8Yyr8QgVCt06X
         tpEA==
X-Gm-Message-State: AOJu0YypXyl/t0H+M6OmHq39apewxccb2BvbDExc5TCZ5qjCLW56l+Bj
	BfWc45RqNSGVGLf3iP9w/iWrBnuqY8RuwA==
X-Google-Smtp-Source: AGHT+IECX7S4APijhoMOwPfy+c5A9ni+cQO7PQe/nUiyUB+5oF8kUh7lpZr7hz9CNpJAQgpQjEz/WA==
X-Received: by 2002:a17:906:76d1:b0:9b6:8155:cbef with SMTP id q17-20020a17090676d100b009b68155cbefmr23994960ejn.61.1697186693053;
        Fri, 13 Oct 2023 01:44:53 -0700 (PDT)
Received: from anita-HP-EliteBook-840-G2 (h3220.n1.ips.mtn.co.ug. [41.210.178.32])
        by smtp.gmail.com with ESMTPSA id 17-20020a170906059100b00992f2befcbcsm12033727ejn.180.2023.10.13.01.44.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 01:44:52 -0700 (PDT)
Date: Fri, 13 Oct 2023 11:44:49 +0300
From: Joanita Nakityo <nakityojoanita51@gmail.com>
To: outreachy@lists.linux.dev
Cc: Julia.Lawall@inria.fr
Subject: Kernel Log Message Not Found After Adding printk Statement
Message-ID: <ZSkDgdL0slUiu/JW@anita-HP-EliteBook-840-G2>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello, hope you are doing well.
I inserted a printk line into the probe function, compiled and installed the changes successfully. However, when I run 'dmesg | less' to check the kernel logs, 
I cannot locate the message from my printk statement. how can i go about this?
