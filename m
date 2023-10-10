Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB0463DF
	for <outreachy@lists.linux.dev>; Tue, 10 Oct 2023 06:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aOjdjvJD"
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-405361bba99so49165235e9.2
        for <outreachy@lists.linux.dev>; Mon, 09 Oct 2023 23:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696921183; x=1697525983; darn=lists.linux.dev;
        h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dgWkyjpKy93lPVoXX6QJfh1THMHkhYjJiBaySS2MDY8=;
        b=aOjdjvJDZ0ijzP752ZKlzrqdn6SDYisV/jnsAn6ppek80zgc04n1J1RnlrKH5NJCro
         t9GqHK8JYjCGr773RWUT1G0ZTyxG+eZqqOEINHTeNC1jFcHOU4un+t3KC+ekNsN6b9ch
         KmS5MQwNvpoUBdwTpfcxDZAN6fqaMlyoGrURiiSKs/g0DOVlb8DFdZgHk08vxkk0GmIp
         5ifO5JiMm6XPmD5tmpZ3n+fqBgH8vH1Nrp3XInSToiC23wH0Y55O8qgSWr0E4mmdhq0B
         BQXFYxQEI2Lt5AzVZOuFbblw7O0lYr7U/HhNTBp/3YLv5d2rT/71HpY8VOvYgwtCsHk2
         WcxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696921183; x=1697525983;
        h=content-disposition:mime-version:reply-to:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dgWkyjpKy93lPVoXX6QJfh1THMHkhYjJiBaySS2MDY8=;
        b=OtLSeszUdBmQXOgysHDOEfLzDxoSpCbTHhjxpHr0Miz4Uy5KkMQolcsu6GmQat7cek
         ES0FJXbT9kE5PDRbV+TMRPeK/j16ALIRiiCZgfrfs9BYzmQJi8OyCse2xsOF4jp+K7nc
         NG6uyFvAv1xFYgLSsigPUhfHKC6F9eN4hjD2QTP3/IGZIViKCcRlc6qm6JauOIh8SzYw
         HiJfNXo7r9IQIJ74dhpW6XwXNrYmXeVGA2OXtudzSBw5ZvV4wG9dbP2SZGtaIjyCxwNj
         tUvpd+kQQvjd7qo+4WjpjbXglt6A5LuAnuF7WX2lcHsn4tFbW8NIFBUMIFLs23fagnED
         EATw==
X-Gm-Message-State: AOJu0YxDW+V4xMJXY1o7lgjdwrnj83txDYPZdjLg7n8O/9vq+iypbCL0
	7C/OEoY+49WWBKJbnemVDvE=
X-Google-Smtp-Source: AGHT+IHLPss2p/t3A7LQKsSkTVxkJ9xCi3bZGqWRULgQBpvT4wnTrazDysxEHn2c0fl418B6BgphxA==
X-Received: by 2002:a5d:560f:0:b0:321:6865:a8be with SMTP id l15-20020a5d560f000000b003216865a8bemr13258091wrv.62.1696921182912;
        Mon, 09 Oct 2023 23:59:42 -0700 (PDT)
Received: from gilbert-PC ([105.112.75.65])
        by smtp.gmail.com with ESMTPSA id j13-20020adfe50d000000b003196b1bb528sm11689719wrm.64.2023.10.09.23.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 23:59:42 -0700 (PDT)
Date: Tue, 10 Oct 2023 07:59:39 +0100
From: Gilbert Adikankwu <gilbertadikankwu@gmail.com>
To: 20231008212812.tw674m2hbhpyhi5v@zenone.zhora.eu
Cc: andi.shyti@kernel.org, andi.shyti@intel.com, outreachy@lists.linux.dev,
	Julia.Lawall@inria.fr
Subject: Re: [Outreachy Applicant] NEEDS SOME CLARIFICATIONS
Message-ID: <ZST2W5AiTsW+P8BD@gilbert-PC>
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
