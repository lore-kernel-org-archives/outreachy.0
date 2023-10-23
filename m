Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F2B31D53E
	for <outreachy@lists.linux.dev>; Mon, 23 Oct 2023 17:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFDv+783"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99EFBC433C8;
	Mon, 23 Oct 2023 17:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698080440;
	bh=KzfeJcg/LqIjgr1S+As2qMov4Pd5U5P+Q2aTtlgz9rw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=SFDv+783dfV+aA4jmgI0DnRXsRfM0wUDcy0SD8SGiyCMKrJrCmhJWJkrApgKFVApw
	 QEnPzVRpGYyofe4Lhaed08p8aNUl3p24xVHNvy1P2sV1ookODjkQPbJtGyrn8HjoFq
	 ll9yHTpRHLyNxVDg2PXp6i33xXgt/kCVRMlEXTwP0RgjJ7tql0K89FuZ3UW5UPFMOV
	 EYdWE91uAq8MBFfVELu2HJafJmgM+Fp36FNZT5zDsGcLe6sHINKrbZprOssO3vidL6
	 JtPPt5PxxzKRwiNZFn/vHHb9XJP91/O6e6q8t1gXT3NjdR2MlrWIhYXQWZ2sYGAchm
	 OtbU8jT85XhoQ==
From: Mark Brown <broonie@kernel.org>
To: outreachy@lists.linux.dev, Gokhan Celik <gokhan.celik@analog.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Gokhan Celik <Gokhan.Celik@analog.com>
In-Reply-To: <ebbc286e3060fa9a0fc9402aa084ec97e2ca0a1a.1696348543.git.gokhan.celik@analog.com>
References: <cover.1696348543.git.gokhan.celik@analog.com>
 <ebbc286e3060fa9a0fc9402aa084ec97e2ca0a1a.1696348543.git.gokhan.celik@analog.com>
Subject: Re: [PATCH v3 1/2] regulator: max77503: Add ADI MAX77503 support
Message-Id: <169808043829.106747.10546434990384576779.b4-ty@kernel.org>
Date: Mon, 23 Oct 2023 18:00:38 +0100
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13-dev-0438c

On Tue, 03 Oct 2023 19:38:02 +0300, Gokhan Celik wrote:
> Add ADI MAX77503 buck converter driver support.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/2] regulator: max77503: Add ADI MAX77503 support
      commit: a0c543bdf4ba4f10d21fb2d44a9abc5715184966
[2/2] regulator: dt-bindings: Add ADI MAX77503 support
      commit: ff5f76b820a95957df0420bba4c67b02978e6c52

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

