Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE75B9467
	for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 07:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bq9kmOZH"
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2bfed7c4e6dso60151791fa.1
        for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 00:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696921613; x=1697526413; darn=lists.linux.dev;
        h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dgWkyjpKy93lPVoXX6QJfh1THMHkhYjJiBaySS2MDY8=;
        b=bq9kmOZH9jFE93zJGf59n4Bawf7YHC22PR1GxC+lx0s34LR+OYV0qX9MWJD2IjOGKa
         lrpkz0IJlyqpXvbcWnwyZ7hpgkEPRKd6eOLdTi48pJBPzpdM943RfHhRuOyVIjy7yqaU
         jT30vdc3C0DIHEHqVhgIagfQZZGQuKuGtKVlsynmK0NPQPObjpHDc2awpbeaduMXwuwV
         8tZyKSSytoclcQBBAk3nZ83dXRa6vjp1xTDz7BLJgGkL61lRD/qefru7zOmj/lRnNiai
         EwjgIX1th4zUq7/HDMwDChtk0830uwcU4n5TcSz9dtsDFK4IIpl3rjycMueIV/1cYvT0
         cL2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696921613; x=1697526413;
        h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dgWkyjpKy93lPVoXX6QJfh1THMHkhYjJiBaySS2MDY8=;
        b=NpLjVuWYRkvCFCgMN7qDVvP1dr7xOzZfsUCg3S8b9d0DozoKtTJUIAQS+/bYSYg/8c
         IwUtT88uwErWwgIv/xemQF5t0ly05xIGjRrYs4jrgLHayeGs90KshyN/qCb6LpOGBBkD
         IohlvOnaZvtleYRlOjVWtlCSD5W63MCNJV5Rey/Yy86Kh5obeNAeM0jfxY+RlWuje/kw
         JfIXFtVvurSNZvSqGjzE7uDBNbjIvLmM9VnyJ0ZNeG6QN7gMenojS8hN6CsFyE3qCGco
         JyXjREZSJ6N4giFKkmc0/Iaomz5886BHhtyro4apaEvh7L/aI9+WzUUvuXqHXW8CND7n
         o5fA==
X-Gm-Message-State: AOJu0Yw3/UfwD36w66jF+dnBQZtaINaj5UHff9LXd3SfIn9rGpRt/AXs
	mqsNrTXzPY0zXJH+kH7b72M=
X-Google-Smtp-Source: AGHT+IE5uFigM1GIW3lNPgHAzigvEnl/Ejlv6fm8FvFngF1IV7w7WN0mPTszxu3dDlvOBfk8jetYVw==
X-Received: by 2002:a2e:90c7:0:b0:2bc:cff6:f506 with SMTP id o7-20020a2e90c7000000b002bccff6f506mr14574028ljg.0.1696921612690;
        Tue, 10 Oct 2023 00:06:52 -0700 (PDT)
Received: from gilbert-PC ([105.112.75.65])
        by smtp.gmail.com with ESMTPSA id k10-20020a7bc40a000000b003fc06169ab3sm15406199wmi.20.2023.10.10.00.06.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 00:06:52 -0700 (PDT)
Date: Tue, 10 Oct 2023 08:06:49 +0100
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: drv@mailo.com
Cc: andi.shyti@kernel.org, andi.shyti@intel.com, outreachy@lists.linux.dev,
	Julia.Lawall@inria.fr
Subject: Re: [Outreachy Applicant] NEEDS SOME CLARIFICATIONS
Message-ID: <ZST4CYE6GOaHyEni@gilbert-PC>
Reply-To: ZSTtMFxdpYzwMFVJ@runicha.com
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello Deepak,

Thank you for your response. Yes I realised that my message was worded
as though I couldn't find any .c files in the
drivers/net/ethernet/intel/e1000e/ directory. But your reply made me
realise that what I really needed was a way to search all files in the
subdirectory for the probe function. And your grep syntax provided the perfect
solution.

Thanks
Gilbert
