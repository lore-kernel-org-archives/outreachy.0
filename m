Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1FDF1C03
	for <outreachy@lists.linux.dev>; Sun, 11 Dec 2022 12:07:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3971C433F0;
	Sun, 11 Dec 2022 12:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670760471;
	bh=Rb0ZDiNRTpIJ44jhHlrSuhbH6YC5sinX3VFVbhv+Dak=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=HePhfwm2OCPzJ0IMWvhvYWJxQMAvKY2clcfyR4ycAeI9ThVjYi4EAPl3AiHkkYcHz
	 BLi1LXUBm3XJLOYeIWMeqkCe0hj2KYo0IbZLkFhMUBkkvoKN0TTSVkDSOnrWy4WbGG
	 d6HQc5IEihijbtISlIUuFztWDd6zlozmROYf/K9x5aDuCtV5RvjrUTqpNmWGakj2QV
	 LuGahsrdhJiBB6uul/DQnTHwuLpFDu4lF71RvMVWFm+WNiepNlbVcoj5BlbAexuYE/
	 DQmjFN1VsWeJ1HiokZbpDdsD5v7NpL/uittUli3xCVTvonAy6Rox6lg1UrmTaDt9N9
	 BXxGXl/gn7egg==
Date: Sun, 11 Dec 2022 12:20:43 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Okan Sahin <okan.sahin@analog.com>, outreachy@lists.linux.dev, Lee Jones
 <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Caleb Connolly <caleb.connolly@linaro.org>, Ramona Bolboaca
 <ramona.bolboaca@analog.com>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, ChiYuan Huang
 <cy_huang@richtek.com>, Anand Ashok Dumbre <anand.ashok.dumbre@xilinx.com>,
 William Breathitt Gray <william.gray@linaro.org>, Manish Narani
 <manish.narani@xilinx.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org
Subject: Re: [PATCH 0/5] staging: drivers: mfd: Add MAX77541 MFD and related
 device drivers
Message-ID: <20221211122043.424e095d@jic23-huawei>
In-Reply-To: <Y5B0btPjY6nHhYRm@smile.fi.intel.com>
References: <20221207090906.5896-1-okan.sahin@analog.com>
	<Y5B0btPjY6nHhYRm@smile.fi.intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 7 Dec 2022 13:09:34 +0200
Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:

> On Wed, Dec 07, 2022 at 12:08:39PM +0300, Okan Sahin wrote:
> > This patchset adds mfd, regulator and adc driver and related bindings.The patches 
> > are required to be applied in sequence.  
> 
> You have an indentation / wrapping issues in the above text.
> 
> Nevertheless, why staging? What does it mean?
> 

The main reason to go via staging is because a driver is sitting out
of tree and it is useful to bring it in on the basis that it can then be
cleaned up in tree before moving out of staging.

For a relatively small driver like this, that's hard to argue.  Just
clean it up in response to review feedback and then we can take it
directly into relevant subsystems in the main tree.

Jonathan
