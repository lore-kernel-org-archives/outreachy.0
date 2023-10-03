Received: from mailo.com (msg-1.mailo.com [213.182.54.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71AC438DE6
	for <outreachy@lists.linux.dev>; Tue,  3 Oct 2023 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1696358858; bh=vh7x5ZhJNS0GfmKuzwEfBjmsB3xcEr6BwzDO3F4GOSU=;
	h=X-EA-Auth:Date:From:To:Cc:Subject:Message-ID:References:
	 MIME-Version:Content-Type:In-Reply-To;
	b=FKkLPwJCrw88VtuTqEKiT3zhHIEhBrvqiVZcsEHSx2kVna2ZZQRPB7stlqIY6V6dB
	 vC3RfEhUTIlpCWoWlowLluU497EfFpuvJd8FNIaLLBQSdT7Ndmt6ucVkp28OaKYQcS
	 oDZXHDMPf4yhzqgHyjvMaIFHNkfVd7xAWMUlNAZ8=
Received: by b221-2.in.mailobj.net [192.168.90.22] with ESMTP
	via ip-20.mailobj.net [213.182.54.20]
	Tue,  3 Oct 2023 20:47:38 +0200 (CEST)
X-EA-Auth: 5je7cY47BVRXvN5s9aw4B+WqDkIKjIm33xOXSlyYvqoyW835s/qMf/BUD+5dmMuCjO9bJLdO0RppM/yY7dV8EAVtZelvTNsY
Date: Wed, 4 Oct 2023 00:17:35 +0530
From: Deepak R Varma <drv@mailo.com>
To: Isoken Ibizugbe <isokenjune@gmail.com>
Cc: outreachy@lists.linux.dev
Subject: Re: [Error]
Message-ID: <ZRxhx503vMrAjRBj@runicha.com>
References: <CAJHH8bHfnuwWa-NQOpypQrgWTWuqYGdTuptVOz=9h0uG2mVkEA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJHH8bHfnuwWa-NQOpypQrgWTWuqYGdTuptVOz=9h0uG2mVkEA@mail.gmail.com>

On Tue, Oct 03, 2023 at 06:50:52PM +0100, Isoken Ibizugbe wrote:
> while cloning the Linux kernel repo, I had this error, please I need
> help in resolving it;
> git clone -b staging-testing
> git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> Cloning into 'staging'...
> remote: Enumerating objects: 9716192, done.
> remote: Counting objects: 100% (32/32), done.
> remote: Compressing objects: 100% (2/2), done.
> Receiving objects:  26% (2602687/9716192), 1.26 GiB | 452.00 KiB/s
> 
> error: index-pack died of signal 9716192), 2.10 GiB | 302.00 KiB/s
> fatal: index-pack failed

Hi Isoken,
This may be related to the directory permission or memory available. Check this
[0] previous discussion on similar issue:

[0] https://forum.linuxfoundation.org/discussion/858596/index-pack-died-of-signal-9

regards,
deepak.

> 


