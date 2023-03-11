Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98E307B
	for <outreachy@lists.linux.dev>; Sat, 11 Mar 2023 16:42:24 +0000 (UTC)
Received: by mail-pj1-f53.google.com with SMTP id nn12so8134361pjb.5
        for <outreachy@lists.linux.dev>; Sat, 11 Mar 2023 08:42:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678552944;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=S3fzlpgrHTO7+MpxMp1jbCrjQn89uAPwvOJKNYZodWY=;
        b=JJ31yhgQpFFwwLqY5kXsfxJMCQk1JaPH6StZYMJZ5hBFb5+xt6AygF4Hr1hJABQ4pQ
         JSgh81JtxgSKwjFp6mZQfsKnK83SnRsPI1zZQS5A1LulKRKH2D3I6GX8/SupJHTa1Ril
         jceMMuJMzF1FG7Z9UP1FilDSH3uA41GAnFPAbxQtuq5EOAzDVa/3ivZvfMTpAglvYAm1
         24OsTi+oiBkLR4PPIYS6XQEMK5a5owvd7hEBB8IbDadUFu6s4E7UlsoxrUoW9DnLFURb
         azUFXSvtgt2japtTt+093+jStiCKNs0hpXAOA8P58o0ZPmUxsIl3T+wU3Z41WeUwNQDl
         Ku2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678552944;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S3fzlpgrHTO7+MpxMp1jbCrjQn89uAPwvOJKNYZodWY=;
        b=yN8sEq9nKJBuAvXEp69ueFV58M6ynaurVqejKZhX4mj+Q6XclXBYup6m6h09aMRexE
         M47RjIaWKLJP8ElJgfZ88Kg3R6VSVMc8iiarbF40cn2gzDDIFMXb5qJhxwdm1tmZ2MK5
         NPiAgaZk82f9UbGs4bY/RS8ssTbzQsnfAubEKZ7/m3l1xV3Jp0AUCalPrWojFTNwOcfS
         suIEchiKdGzuQVchTLrdOly1diO4pKqvuR0CakJdMs6wgjpSXNbdiXy/YK73eh44Feov
         jxhm1amOrw0I1yDSfgCKjfY9izOZikJt5NB/sqouFuszPdDArdz5EVegAX5tvCqZtrd1
         Yulw==
X-Gm-Message-State: AO0yUKUTEAllL5amwtRKV/7x0x4ITTc06O83niiudLoKhINryo5eTktw
	KwMBWvibzERgjZbuC7m+soJM1p6wGqe+sQ==
X-Google-Smtp-Source: AK7set/wqjECtAAHuxqsEIws/GSZ8zZKrCWR3OhLZ9ZQ+A51MDZt0ZfyiwyCgKHlyXzVLhl6ZbC0UA==
X-Received: by 2002:a17:903:1cb:b0:19e:f647:6075 with SMTP id e11-20020a17090301cb00b0019ef6476075mr6181904plh.27.1678552943755;
        Sat, 11 Mar 2023 08:42:23 -0800 (PST)
Received: from ubuntu ([117.199.152.23])
        by smtp.gmail.com with ESMTPSA id kl15-20020a170903074f00b0019e81c8fd01sm1749103plb.249.2023.03.11.08.42.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 08:42:23 -0800 (PST)
Date: Sat, 11 Mar 2023 08:42:17 -0800
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: error27@gmail.com
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Remove parenthesis around single condition
Message-ID: <20230311164217.GD14247@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20838efc-e8ef-4696-9a27-958bc5aab19e@kili.mountain>

Hi dan,

This is the patch https://lore.kernel.org/outreachy/20230311152453.GA23588@ubuntu/T/#u

regards,
sumitra

