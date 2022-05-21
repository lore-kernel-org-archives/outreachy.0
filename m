Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE930195
	for <outreachy@lists.linux.dev>; Sat, 21 May 2022 00:50:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BBDBC385A9;
	Sat, 21 May 2022 00:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1653094212;
	bh=OiBb6o2oL2q5VkeJClWHXU8pN2PYd8OUvVNkDTQKiFs=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=GejGIae8fGH6o/VI1/Hetpl2pKKczjMo5YHUb82TntBprp/oyTAbXtvHfkkHzGpn/
	 mbcdR5VLw4uKx05XG4DLylKII8rd8cjrXVkAV2cVBSqUMBVP9mW0cV1giDxuKwUmSQ
	 JI0rLHzx1IPGHp+jwYRzVn33jeQ/9RUZ0oOvl49NZ3UGxFt8BBRp+hWp4TMfa5/xJm
	 kv1yHsDaw6jn7KVnZYn1348eojMVAlvng/oHDf6Qjzqo0MD/efZSiQA5QWMucPI/Cr
	 96XhB9RDDq3dNHeJfDYn+tWpVumkoz3zZUsT71oo3LwuL3HMRWbtTLYh7gdatFg2Rz
	 Ppjml9NFaFQWg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 52E84F0389D;
	Sat, 21 May 2022 00:50:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH net-next] net: mscc: fix the alignment in
 ocelot_port_fdb_del()
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <165309421233.963.16081972225835209923.git-patchwork-notify@kernel.org>
Date: Sat, 21 May 2022 00:50:12 +0000
References: <20220520002040.4442-1-eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <20220520002040.4442-1-eng.alaamohamedsoliman.am@gmail.com>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
Cc: netdev@vger.kernel.org, outreachy@lists.linux.dev, roopa@nvidia.com,
 vladimir.oltean@nxp.com, claudiu.manoil@nxp.com,
 alexandre.belloni@bootlin.com, UNGLinuxDriver@microchip.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 linux-kernel@vger.kernel.org

Hello:

This patch was applied to netdev/net-next.git (master)
by Jakub Kicinski <kuba@kernel.org>:

On Fri, 20 May 2022 02:20:40 +0200 you wrote:
> align the extack argument of the ocelot_port_fdb_del()
> function.
> 
> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> ---
>  drivers/net/ethernet/mscc/ocelot_net.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Here is the summary with links:
  - [net-next] net: mscc: fix the alignment in ocelot_port_fdb_del()
    https://git.kernel.org/netdev/net-next/c/f7b5a89c66de

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


