Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=74.125.82.173
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793396841;
	b=HhiPcVUXtXXIBipkEJjUMkE/Rv4aUw3HIc3+h4YICxVvKKGToStfZVR4ZD7j3vTmkeT6
	 DD0yQg26c2vYM2Ma/MFW0BMSnEN9O5YSooblAghK4pUdNDTdl9ppfnJM/VwmnMATk46+l
	 fs+RHnoya0nQEJA3sMyo9zQYTD+4Uc1Vtb3v8bZQkJY3a15uskLnUU8eOS8geBkkV4QW0
	 mZY4wrb/tVOqass4nsP4N7UzXhJGCol5snsiYBtrVXcE0dfXrEnk0krJ5U7o3yQdA0ZVs
	 FRM9+UfxT352lHMjMhnPw1Qcp+r+pK46Lg9IbFdDTTTSZiHCTb3jE5MagQVlhwEOzqg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793396841;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:MIME-Version:Content-Type:Content-Disposition;
	bh=+JUt8x4LF8OfdfyU4/L1yU5yrqn8OxX3SyDrhQSD2h8=;
	b=yvht5ORnU48JSNtD6i3XVjFrEqQq2N3ya+QB/clKY4rzulDyl2PRj7z9jtGm3qaFwxHN
	 WKcriklBa50fkXsXxGFQOihjgErgWeWk8LvrTUNBWc+pp/q6YncRXPUjM3ZZMx+gsEJCV
	 sE0mPHeshLjOqgRuovt0p7mPjBGIbJ2UU6a4wXnf0wKWKSv4KRfqbg2UpjmRBTEjuZMsn
	 fwvaO8hZYfNAkSqlqhKH9HD9+y7yRaQ9UqMw88LVAwM5jXUpSBKx4D+k9Atl0M1D4Gbgb
	 0A3lXiDRfMAVbQd8s6HuNS5qW8wliPstNv5T/rD3869CZiXzdhoO7zjjgmvSwxzueAg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=iCBZipiU;
	arc=none smtp.remote-ip=74.125.82.173
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB81606A31C
	for <outreachy@lists.linux.dev>; Fri, 30 Oct 2026 21:47:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 5FB81606A31C
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=iCBZipiU
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-3282db206d3so266799eec.0
        for <outreachy@lists.linux.dev>; Fri, 30 Oct 2026 14:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793396840; x=1794001640; darn=lists.linux.dev;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+JUt8x4LF8OfdfyU4/L1yU5yrqn8OxX3SyDrhQSD2h8=;
        b=iCBZipiUfUZ1n+YWIfBaxZkZGnzWMLOmCl4wU9epFO+MrQ/g8+ZBNLTvLl9fYZ+SQp
         /sHvZeLx10WX1auW/i5PMr9ELap9eHAv7fbqPtQ5eHzpEYarTPR94ue+UG3LUUt0ELox
         F5MTYf6YeQLa49iylU7ApZ5GAW/DpzbOBrUYo7elue/V0RAe8WaX3NKVeCndw6E9hgzt
         7JOE7q0bdpsPamDwS5DDRghIZOHc4MVxQJVMvbbM9Fr/njSi8uYrgMXGW6Lg5fIzcpKe
         +rbCbPzXx5e4dS60ejIrHyp/TK4DSwqN4tRazBzJN0R+3jzBcHCGdavozlH+HUK8FhGk
         R1vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793396840; x=1794001640;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+JUt8x4LF8OfdfyU4/L1yU5yrqn8OxX3SyDrhQSD2h8=;
        b=CyHlYt84aacl5bMdOqndBH/kRJzIHi/GzcT2H9PoeFq3hAmmf9KZGNrjLcOFTHCb8d
         Idtyeie6GIt73o78gxcSwlii9O2wmYXZHvxGedIr7Jw9YtphflpvZlwoh6c1hqg5bmKW
         4dr6gIoh/2JoZLH0sYrx7uS6n+BAik2o4vnl0INQ/CKj5t8IftyWURhMvokYPBawZayI
         7URA9LurEGoq+NEKtei9I+cr0LZNrV3Nb2E+4Q7WNQaIoeEj7UkxeS92RBOK/R6O2Lif
         ihz0pw01de89HD2XDxclt5q9l996AyRDJ8ryU6JhvcJjcSQx/r3VEWrhxF24xRw86r0I
         O7qA==
X-Gm-Message-State: AFq9FYLS+fbK0wH9xL447fGUNCEeOtSa1WGADsX7UoZyqjUB9xm4LYUZ
	sBTRKcy73otnMwi9uT34kn0sZXMlDeSDvXw39B7vh02MT3WjG8whbVGILcgZXei0
X-Gm-Gg: AYBFou3IFFZTiMRZEvmyqW+nrheDxcdtpShc2UXNDzaHO7Od6AZW0mfDraXityJ2acA
	MI8xrRM9VyFdWcPW/XXFaEeMK7aHLHE9WMeAy9KJeXRq0QNs/Rks0o4RTJCU4wGNmbpBOXIIgDv
	lkciuWOZnbI1L/IozHq7H6t4Xw4OchHwl7SClPS42YaIjiATqB0TSxi7WdcqfZpstwSdEmidEBM
	uSYw6f4I3luINKsBFUQy4Pz3reTnZ0X+laNfTa2YomVGLatqgSpL5o1O3E1bnFwnhZ/cB+x6Cje
	9fChSa7/Bl7IoUGgVdGnF+45XmZpz4tZLrHR76GQy8XbjlQRZe5XMgn1u5WZTF+wO7pJSMy766X
	K8qXZVJPl/g9ZA1k3mh7y75OJEnwS9y8r5yTzEGx2HpoCt6TslHoFJpnZ7h3koZdTuh/Jj4V+B2
	5Tx7bOrt//DTQTYKd08Mlrj4mUEX5tvAM4e/SXjGsAg4ZRNeNktRn5BVywIk0QGCoNBwKLN++86
	bEk9m+xE+7r6LrGCnIijQVNTnf2Q5UlEloxn+33obgi+1P6dBwFa+H67rCHXr4WbxEtiSFym8vv
	TuFF4yd7IJWhUMzxnF/u9nlcqvdV7ZN+2YI=
X-Received: by 2002:a05:7300:c8c3:b0:36a:1b62:da with SMTP id 5a478bee46e88-36a42340be0mr5073092eec.12.1793396840369;
        Fri, 30 Oct 2026 14:47:20 -0700 (PDT)
Received: from user ([2405:201:c052:b00b:a028:322e:fab8:f1e8])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a42a504c6sm10470904eec.21.2026.10.30.14.47.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 14:47:19 -0700 (PDT)
Date: Sat, 31 Oct 2026 03:17:07 +0530
From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
To: julia.lawall@inria.fr
Cc: outreachy@lists.linux.dev
Subject: Guidance on Tracepoint Patch Review and Next Steps
Message-ID: <auUQWyfIch4LX60c@user>
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Julia,

I wanted to get your advice on how i should proceed.

Should i continue waiting for review of my tracepoint patch, or can i start
sending additional tracepoint patches in parallel?

I only included the steven and Julian. Should i resend the patch
including the relevant maintainers as well?

What would you recommend as the next step?

Thanks,
Pavan
