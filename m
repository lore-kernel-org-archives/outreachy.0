Received: from omta040.useast.a.cloudfilter.net (omta040.useast.a.cloudfilter.net [44.202.169.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A29F636
	for <outreachy@lists.linux.dev>; Tue, 24 Oct 2023 00:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=embeddedor.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=embeddedor.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=embeddedor.com header.i=@embeddedor.com header.b="g412Fl00"
Received: from eig-obgw-6007a.ext.cloudfilter.net ([10.0.30.247])
	by cmsmtp with ESMTPS
	id v1L9qlb236nOZv4xcqBAyL; Tue, 24 Oct 2023 00:07:52 +0000
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with ESMTPS
	id v4xbqmh5e5ZLUv4xbqvwPa; Tue, 24 Oct 2023 00:07:51 +0000
X-Authority-Analysis: v=2.4 cv=S57KfagP c=1 sm=1 tr=0 ts=65370ad7
 a=1YbLdUo/zbTtOZ3uB5T3HA==:117 a=WzbPXH4gqzPVN0x6HrNMNA==:17
 a=OWjo9vPv0XrRhIrVQ50Ab3nP57M=:19 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19
 a=IkcTkHD0fZMA:10 a=bhdUkHdE2iEA:10 a=wYkD_t78qR0A:10 a=6xGJIMmgAAAA:8
 a=_Wotqz80AAAA:8 a=RlR4_g-fcLoRnPhprk4A:9 a=QEXdDO2ut3YA:10
 a=aWz6Jz32kaLdCzdWRG-w:22 a=buJP51TR1BpY-zbLSsyS:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=U0w4wkXYX8VfyvFsbwiv8o8q6UfmPFTSJkWOtfro1hQ=; b=g412Fl00B6ZdkPGKynV/BPT2+C
	rhACG0EyhnM8L/jtRfY9/2FCiZZRqkK514S3WoqRlTdAWlNe3H39OC8UqOYTCizWQiRFubofOqLpr
	BEPpdse2mcQOlQzMBJ+/PF1q9GZJFLjPe6Mm6DMVvVnVePfNqnUrr2uAhKvNB9G/GZFO9AWGzg36P
	bvWmgU/Rlg+uRRt2sZWnv9XuOV28BzOUk8Yc5KKfMrmWDKRG3vTz/MEv8UxBPOd2ajg2NNmkMgvU0
	Uq7mX8EDfG203wtSlDDteZLvjB9twqyBMEeqHDUcrYczV1+rNTdw7v5fYz0EmpD7ISZs8YEi3deaz
	324mdJ5Q==;
Received: from 187-162-21-192.static.axtel.net ([187.162.21.192]:41240 helo=[192.168.15.10])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.96.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1qv4xb-000Xms-0I;
	Mon, 23 Oct 2023 19:07:51 -0500
Message-ID: <e122e8c3-bb9a-4f38-927b-989b1ae343a7@embeddedor.com>
Date: Mon, 23 Oct 2023 18:07:50 -0600
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: KTODO automated TODO lists
Content-Language: en-US
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Dan Carpenter <dan.carpenter@linaro.org>, ksummit@lists.linux.dev
Cc: outreachy@lists.linux.dev, kernel-janitors@vger.kernel.org
References: <369bc919-1a1d-4f37-9cc9-742a86a41282@kadam.mountain>
 <9e0dc452-c4fe-4511-83fe-a1e356bd5438@embeddedor.com>
In-Reply-To: <9e0dc452-c4fe-4511-83fe-a1e356bd5438@embeddedor.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.linux.dev
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.21.192
X-Source-L: No
X-Exim-ID: 1qv4xb-000Xms-0I
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-21-192.static.axtel.net ([192.168.15.10]) [187.162.21.192]:41240
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 2
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfC7G2a7UYGugorezEtQlrud/tLOPRx2OtFc7S0PJtru0IDVXwM1aS24I+o1NUdPomGRti0TGR9QqNG/Fb/G7+uw7tSoeaVKMEEpX96U24pIMqGvrj/Yz
 a0B7GUojjJamGG4KWIA79HZtkUMVSsRfbNcgNa9E18rnVf6PtZn3OB9xioNW6tqqA0Ae8+elORt+GY4dH79WvlhSn88iDRohXLA=



On 10/23/23 17:38, Gustavo A. R. Silva wrote:
> 
> 
> On 10/18/23 22:11, Dan Carpenter wrote:
>> Yesterday someone on my lists just sent an email looking for kernel
>> tasks.  This was a university student in a kernel programming class.
>> We also have kernel-janitors and outreachy and those people are always
>> asking for small tasks.
> 
> We have tons of issues waiting to be audited and fixed here:
> 
> https://scan.coverity.com/projects/linux-next-weekly-scan
> 
> You will never run out of fun. :) People just need to sign up.
I see people already signing up. :)

BTW, here are some resources that people could find valuable:

https://embeddedor.com/slides/2017/kr/kr2017.pdf
https://embeddedor.com/slides/2018/kr/kr2018.pdf
https://embeddedor.com/slides/2019/kr/kr2019.pdf

Those are the slides from some presentations about fixing Coverity (and other)
issues that I gave at Kernel Recipes some years ago. The talks are also on
YouTube if people want to take a look.

--
Gustavo

