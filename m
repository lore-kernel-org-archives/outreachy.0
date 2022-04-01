Received: from relay3-n.mailbaby.net (relay3-n.mailbaby.net [66.45.229.238])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F08D1363
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 20:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbaby.net;
 q=dns/txt; s=bambino; bh=+jHW1mmcRjXEfmPVDPS2P0Sb4a9eHyeVWzKg43U1n98=;
 h=from:subject:date:message-id:to:mime-version:content-type:content-transfer-encoding:in-reply-to:references;
 b=TBJfBCQNo5+6RDx319ErQ7zvcTcZyyiAIRJYpSSMPD5YMV6RJe2ijUgS7DmZX93/u9gfoB7KO
 eKpfi6jGgdZcZw6gWWhiDYa7Ix9y5CLN831VkAGYZRPQYapxLzHirQBjS4Sy24L/1BWzIsV/3IN
 LioqtEbNBw5VppReZkSNRgs=
Received: from mia1000.iaasdns.com ([162.254.200.130] mia1000.iaasdns.com)
 (Authenticated sender: mb6724)
 by relay3-n.mailbaby.net (InterServerMTA) with ESMTPSA id 17fe6d10e83000aa7b.001
 for <outreachy@lists.linux.dev>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256);
 Fri, 01 Apr 2022 20:28:54 +0000
X-Zone-Loop: 9593d430d0a93c0ea373adc42d5c08114182eca6bb14
ARC-Authentication-Results: i=1;	relay3.mailbaby.net;	auth=pass
 smtp.auth=mb6724 smtp.mailfrom=codeagain@codeagain.dev
ARC-Seal: i=1; s=detka; d=mailbaby.net; t=1648844934; a=rsa-sha256;
	cv=none;
	b=MuhKqX/CRX6wsr3bt9edWiVB83C3JvY8Gaz1wBfE6qJn06kGEfyrERJaaghvKHlMaWpW5c
	BRRqgVzwhZeo8Up2jifQ5c0uGcWriSB4F7gkAJmy9uFFi0SAvqo4KLWE9A0+P3p/yhUXCY
	YxrpAGZanRq5ff9/wSoWvdHVmet27vJyf7VOnMeGWC2expk2fWiuiAGhzfHLuoCXuN7v3J
	9d2nhEFmBkjDLVOvB/CBYeoSc307SGbg/Co+sXM33ap4X7W/bIurR1wxfaz+9f+dPM3VDN
	1MM2fGHwbvvQXIHgNtA08gtwngVovQrzwW/EoVjrJwfJHpoQZnzDrkGr5bt55Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailbaby.net;	s=detka; t=1648844934;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+jHW1mmcRjXEfmPVDPS2P0Sb4a9eHyeVWzKg43U1n98=;
	b=kQWqmhBs6rBFHnaDnd7Mn0dzY/EerMhGuuFqHG6blMG3T9EDH0yq3owpZO2mHimZZ8hWoK
	ppAX6+38cuivwI8QN1c485SEMO+9fOCZhpDQme8HsfQ75Gw8+SR3ESJtQZciFPNQxyM6FM
	OVWqBk8NSPrUocSLdWA/vuJ7SMZgsi5wuyAiUbSWaVCjoJX8FScyMoL3yoASNkSZo61K9w
	EWtY4FasOFBLoCsds4EjOw13czRd/tLoRR87Hx3zPMi+O5Jz8cdSX0KwJn5FCuIujdAyMA
	kTpfzMLY5NT1XfrWse6ujcaRs1N7PxUnGtucHKQE3o6oeNEEwOJzcNlmSYaiqw==
X-Originating-IP: [162.254.200.130]
Received: from [170.84.58.28] (port=23974 helo=[192.168.21.4])
	by mia1000.iaasdns.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <codeagain@codeagain.dev>)
	id 1naNt7-0005Cm-Jv
	for outreachy@lists.linux.dev; Fri, 01 Apr 2022 16:28:53 -0400
Message-ID: <1a8d18273836c87deff1833baf0748e2c1a14308.camel@codeagain.dev>
Subject: Re: Missing package when sending patchset
From: Bruno <codeagain@codeagain.dev>
To: outreachy@lists.linux.dev
Date: Fri, 01 Apr 2022 17:28:51 -0300
In-Reply-To: <CAMWRUK6g5qytnqqNV9GmWgWYsxHFXm0iBEw05Gp62v7tFSg8tQ@mail.gmail.com>
References: 
	<CAMWRUK6g5qytnqqNV9GmWgWYsxHFXm0iBEw05Gp62v7tFSg8tQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.4 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AuthUser: me@brunodout.dev

Heyy, I replied this e-mail from my phone in the morning and it sent
in HTML, even though it appeared to be text plain. I apologize. Now
I'm sending an updated status!

On Fri, 2022-04-01 at 09:11 -0400, Sevinj Aghayeva wrote:
> Hi all,
> 
> I just tried sending out the first patchset,
Congrats, Sevinj!
> 
> git: 'send-email' is not a git command. See 'git --help'.

Indeed in some distributions a software is fragmented into lots of
packages. On Arch, though, the package git comes complete.

> 
> Stefano on IRC pointed out that I'm missing the git-email package.
> After installing the package I was able to send out the patchset.
> I've
> updated https://kernelnewbies.org/OutreachyfirstpatchSetup to
> include
> the git-email package in the list of packages needed for Ubuntu.
> 

In the message this morning I told I would update it too for two
missing perl packages for Arch users, likely related to SMTP
authentication: 'MIME::Base64' and 'Authen::SASL'. I updated the page
with instructions on how to do that too!
