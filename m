Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA53192
	for <outreachy@lists.linux.dev>; Sat, 21 May 2022 00:50:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 646FAC34115;
	Sat, 21 May 2022 00:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1653094212;
	bh=dgEWgf2QoicXMs6ILtrfEfwg45ghqytaoT3pSSyceWI=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=Us3lSvkZN7RcRTbMjyS2u/vMe/3YmFy28OeVHhDDFP11habMd41GIP9nbivyZxFi8
	 2/m4GeaHw/HAPyXGLo67p1R8PqXaPSLGIfhFkLP0WVm54kloLnDapHfqLEK7v36/KO
	 AdjQy4se0Qq56aYBzbIXu7HSFLXFe+1ViuiTWVsami3Ym6J4efkjo/Yw91j9/CoMQY
	 uwGnzWztHG7V10CoEt8WH8vBmWRwtHFggZEGK+mqDiawfEl58mMfWr9DYbY8rR0Raf
	 NTWmEo1hgKq2cz+RTNb5MfsYsbB0Lqw/uXWot3v8iqJyHqiHxyfU0FHziDdr5vHWLQ
	 GVKjavPQsXuuQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 4AB09F03935;
	Sat, 21 May 2022 00:50:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net-next v2] net: vxlan: Fix kernel coding style
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <165309421230.963.13198867606656703517.git-patchwork-notify@kernel.org>
Date: Sat, 21 May 2022 00:50:12 +0000
References: <20220520003614.6073-1-eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <20220520003614.6073-1-eng.alaamohamedsoliman.am@gmail.com>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
Cc: netdev@vger.kernel.org, outreachy@lists.linux.dev, roopa@nvidia.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 linux-kernel@vger.kernel.org

Hello:

This patch was applied to netdev/net-next.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Fri, 20 May 2022 02:36:14 +0200 you wrote:
> The continuation line does not align with the opening bracket
> and this patch fix it.
> 
> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> ---
> changes in v2:
> 	fix the alignment of the "DST, VNI, ifindex and port are mutually exclusive with NH_ID"
>   string to the open parenthesis of the NL_SET_ERR_MSG macro in vxlan_fdb_parse().
> 
> [...]

Here is the summary with links:
  - [net-next,v2] net: vxlan: Fix kernel coding style
    https://git.kernel.org/netdev/net-next/c/c2e10f53455c

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


