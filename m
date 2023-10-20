Received: from omta038.useast.a.cloudfilter.net (omta038.useast.a.cloudfilter.net [44.202.169.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98D3C1E53F
	for <outreachy@lists.linux.dev>; Fri, 20 Oct 2023 18:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=embeddedor.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=embeddedor.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=embeddedor.com header.i=@embeddedor.com header.b="Yemw4+Ef"
Received: from eig-obgw-6003a.ext.cloudfilter.net ([10.0.30.151])
	by cmsmtp with ESMTPS
	id tlCjqRDgLWcCItubwqP5yv; Fri, 20 Oct 2023 18:52:40 +0000
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with ESMTPS
	id tubvq13PuRqxCtubvqQgn8; Fri, 20 Oct 2023 18:52:39 +0000
X-Authority-Analysis: v=2.4 cv=IY2U5Ema c=1 sm=1 tr=0 ts=6532cc77
 a=1YbLdUo/zbTtOZ3uB5T3HA==:117 a=WzbPXH4gqzPVN0x6HrNMNA==:17
 a=OWjo9vPv0XrRhIrVQ50Ab3nP57M=:19 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19
 a=IkcTkHD0fZMA:10 a=bhdUkHdE2iEA:10 a=wYkD_t78qR0A:10
 a=XGI_PzKKfEUjlKzkkXEA:9 a=QEXdDO2ut3YA:10
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:Subject
	:From:To:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=d1L+7Pppq9+LqqnKiV8I+fkI/r9YeI2lfL24lhPApAM=; b=Yemw4+EfrnCtP9NUb6GMWvoTAJ
	0znhHCZj3v3gxdlXNYZ0quCfPXDm7o3CBm9IB6LF6SJkKc48TPEQtdl3jIXWQwdDGVmWkWhMNlY0p
	nTZgw3+27OqpA5JGnowoVmw0wfAmD7S1/qXnihCbC+68r7SATvf/bbJmj5naqew/nyWLczGHixs0+
	drOplXo8lDwHoJ5knQlezdd9Q1Pdb3tNox5nOfccUbXUfsJNavv+8H5vviUwm/f1B+XRERzeyMc20
	TaCeiyBxKhXPUvc1PyfflbYR6YrRnwnG0SfOflReWGr350TUFv50rf+EdJGoQaEcszHkogvUujuwG
	rdrFwBgQ==;
Received: from 187-162-21-192.static.axtel.net ([187.162.21.192]:39484 helo=[192.168.15.10])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.96.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1qtubu-001Emq-2c
	for outreachy@lists.linux.dev;
	Fri, 20 Oct 2023 13:52:38 -0500
Message-ID: <fd2408b5-f35a-411f-b24b-b65902641aa1@embeddedor.com>
Date: Fri, 20 Oct 2023 12:52:33 -0600
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: outreachy@lists.linux.dev
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: [outreachy] Refactor and clean up the upstream Linux Kernel
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.linux.dev
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.21.192
X-Source-L: No
X-Exim-ID: 1qtubu-001Emq-2c
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-21-192.static.axtel.net ([192.168.15.10]) [187.162.21.192]:39484
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 1
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfKga6C8xGnExDrl14yPPyH5ecAXc6G3kGgDwEPEVVgABcOTIDBkJ44zlIQGQ6JI70CEy5i1nJZ9ECVd85W7+t2kNCJMQwfi5z9kK5hZVO8o1TP2K7r8e
 w8wgPqhtL03VZAVab4nFUy89ZiVDv0KGIPBw2lcWo2W1G5efUTXGQrIarrPdD0OP9++5hPYqCZEwe1Cg0BGdaG2WJh5BoPYcPwY=

Hi all,

For those interested in the project "Refactor and clean up the upstream Linux Kernel",
I've just updated the "Project Starter Tasks" section.

Please, take a look.

Thank you
--
Gustavo
