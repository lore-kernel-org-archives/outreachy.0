Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E550D20E5
	for <outreachy@lists.linux.dev>; Tue, 29 Mar 2022 02:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=qaND8+B6waDWPFPdKzaecCSWoSAUGh/VQVoLfMgXSYk=; b=hwYjO874ASl2BkckrGepN+KyIq
	/9tUz6Xd1fR2IR/CIckcYJngrHzLXbpU5uI6UanGGTLSCoGXYSqDemc43OHxsSOUsMRIxZSv8EmaY
	8ZSHW6FgzGwbFSeSNda4MmAbqgUJXeJ3OSqfX1vZtM9Pl9fK9pYRHP+jFYYXPG9zS7MY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1nZ0T0-00D5hw-0X; Tue, 29 Mar 2022 03:16:14 +0200
Date: Tue, 29 Mar 2022 03:16:13 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
Cc: outreachy@lists.linux.dev, toke@toke.dk, kvalo@kernel.org,
	davem@davemloft.net, kuba@kernel.org,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] First Patch: Add Printk to pci.c
Message-ID: <YkJd3cW4DeHZePpI@lunn.ch>
References: <20220328232449.132550-1-eng.alaamohamedsoliman.am@gmail.com>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220328232449.132550-1-eng.alaamohamedsoliman.am@gmail.com>

On Tue, Mar 29, 2022 at 01:24:49AM +0200, Alaa Mohamed wrote:
> This patch for adding Printk line to ath9k probe function as a task
> for Outreachy internship
> 
> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
> ---
>  drivers/net/wireless/ath/ath9k/pci.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/wireless/ath/ath9k/pci.c b/drivers/net/wireless/ath/ath9k/pci.c
> index a074e23013c5..e16bdf343a2f 100644
> --- a/drivers/net/wireless/ath/ath9k/pci.c
> +++ b/drivers/net/wireless/ath/ath9k/pci.c
> @@ -892,6 +892,7 @@ static int ath_pci_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>  	int ret = 0;
>  	char hw_name[64];
>  	int msi_enabled = 0;
> +	printk(KERN_DEBUG "I can modify the Linux kernel!\n");

Hi Alaa

Nice first patch. Everybody has to start somewhere. The description is
good, it explains 'why', which is the important thing. The signed-off-by
is there, and it looks like it did not get mangled by your mailer.

I suspect if you run ./scripts/checkpatch.pl on the patch it will ask
you to use something other than printk(KERN_DEBUG). I guess this comes
later in the Outreach internship program, so don't worry about it. But
it is a useful script to know about.

   Andrew
