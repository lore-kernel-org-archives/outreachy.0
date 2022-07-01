Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93B89187A
	for <outreachy@lists.linux.dev>; Fri,  1 Jul 2022 12:40:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 40A69C341CD;
	Fri,  1 Jul 2022 12:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1656679215;
	bh=g+knEIBM432F9SVSaNtXXaSap2XC9pzxcHkVyHXHJvM=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=hSJ13hcn3uio/BwIHTDFLDVR5cCwY+gkQM1kJQ+JKZOn7fWmNu9rmQnPAUaDRBcaU
	 VS/Kn2OxDn1IQ1aBNq2L8Zw0v7KS2mMycGqK19W1K7WfpRw8hdySa84/Btsojh5T/y
	 A3zrbbLqlhWm7CXA5VwL6JP5Hm6/jseAs/7m4BfIOHIo1xeu6554TepiGPXxkX7av1
	 sQC0AsSlvkYc76CMbb4RfN2eFeur39ODaGsTUi6SrFX6OdHLzMJszmP8BEu1uv3vks
	 Z5z6F6eKmKhBBwi7kyrd//yytHL4HXgPgCgy9Mto2woC2ObaWiK45zBScdkg4BaKqw
	 DlgBqYvje6yIw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 25294E49F61;
	Fri,  1 Jul 2022 12:40:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net-next v3] selftests: net: fib_rule_tests: fix support for
 running individual tests
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <165667921513.18764.12586274346511205612.git-patchwork-notify@kernel.org>
Date: Fri, 01 Jul 2022 12:40:15 +0000
References: <20220630102449.9539-1-eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <20220630102449.9539-1-eng.alaamohamedsoliman.am@gmail.com>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
Cc: netdev@vger.kernel.org, outreachy@lists.linux.dev, roopa@nvidia.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 linux-kselftest@vger.kernel.org, linux-kernel@vger.kernel.org

Hello:

This patch was applied to netdev/net-next.git (master)
by David S. Miller <davem@davemloft.net>:

On Thu, 30 Jun 2022 12:24:49 +0200 you wrote:
> parsing and usage of -t got missed in the previous patch.
> this patch fixes it
> 
> Fixes: 816cda9ae531 ("selftests: net: fib_rule_tests: add support to
> select a test to run")
> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> 
> [...]

Here is the summary with links:
  - [net-next,v3] selftests: net: fib_rule_tests: fix support for running individual tests
    https://git.kernel.org/netdev/net-next/c/9c154ab47f5e

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


