Received: from sonic305-3.consmr.mail.bf2.yahoo.com (sonic305-3.consmr.mail.bf2.yahoo.com [74.6.133.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4B6F37188B
	for <outreachy@lists.linux.dev>; Thu, 15 Oct 2026 02:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.6.133.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792030873; cv=none; b=n+IeHd3kCuDHYk3UL0vxftqBYu7ClJbOojbEzhtG0VdxGe/tIqN41jBSM4YTNHWqZ+x4ysqCRbNNclj6an2TgIjtdECyRcJZjVu1g5Vp5nXfN+cPvxuPaY5CiQzZCfkWjsoTxC4F9vzXr7pDbELX7pBre2c537+6S9lq4BJ5hdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792030873; c=relaxed/simple;
	bh=6iCNyIYIVE1txCcTSBFFp94PtgI/sJl9EiKwOEh1bss=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qTMYGMjUkySUaOOujY003SgIqT80kqs02/pI81xJFlvj4lWefjU4y8cduMnp+Xoqh+mNdqw9EkJcQ5rTYbrrXzyVbQnap764ClK8AGobqNPnDqSoyPHmS46iKC5Fh1RBlDZfye+JSAj/fp2FVFiwV6rQ+R34Ajq9B95DA+Z+iRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com; spf=pass smtp.mailfrom=yahoo.com; dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b=WL702MI+; arc=none smtp.client-ip=74.6.133.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=yahoo.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yahoo.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.b="WL702MI+"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1792030871; bh=/mXmejL8yTKKnZA63ElBBljQ/vMiEe97CA820DaIQpE=; h=Date:Subject:To:Cc:References:From:In-Reply-To:From:Subject:Reply-To; b=WL702MI+a76nYSzeZ6lJSmZ3aQAoGrOXzVY4jrvXvMSzDt1dkVk1WalpJNdhhxHFgw0CpzVFgIATDO2YaK43N4jfonZC70aCbgmWrg/jYsgt0goCTee7QzDUb77ZdvsWfjmgX1Ysi5Ye+wHZfNupvhu4B5OGfUL9KFwHo9lTi7nYLfknU/IAgZ3NYefGKmvRbx5CFFjQZAWaJ+BC6IllEH6+FHoyDxj9uDQLsUgrQqmH0p6fsCXeRlNHaA0DMs/aOjkfyrjJNBweGFP2Tfv41uUMxb8lEI7iyabrxEWmxOYuFopoUNtjKAu/H6+uY+DW70cgKH38J2yBgPMqYWkZpw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1792030871; bh=jzPBzQ8C6c0xnh0yteAFaxTBP62O1mCWDN/lAACPIcT=; h=X-Sonic-MF:Date:Subject:To:From:From:Subject; b=RKord6nxzjFyxBlUprNY2AimHvSckgHr/JqNpIniggJ8QgQ4hm89yReW2xPjvuDNM+bxrD5qN2SggejNhqpfLfzXzZVbdO6FeEGP1VwnTW3m8dCYIX+Xcg7bGOnWDWRmpglq4DwRqXttOvorCv7wTeiHlM+9LqqwfZBemQzZagf54sYVOaj9SGcyH/qh8Gt228SNWoPg7oKC/fAV/R7aW26L9G3T3IIx00QIQFWAR0n41xlgAF0eVNcy0WsF67bVoNiuX/q/lRb8TmlBAjP0/0hji8iDJKN7H4QX/LngaTXx+T3s1pGv8ETn8pTr/RxGn4cVwi9RnNisG2W/gW93GA==
X-YMail-OSG: XGWBACcVM1n0skbHV0a4WR8D8eHe8xirFJLp16jXthxuw2GEWL1wRg33KMn6let
 9iZzo8kUEeOB3P6ccoRuu9MwL58oo3b.SM.nbyuVqnB_maUQJyAoqLGI3rsljlHIZcAItNv_O0nJ
 hHuUr0a1YWqm59qe41SNqOO388J8H3xKDpKA3mtD9FtetSV0mTlkaRscNSHAancIIwBgMNALNFFh
 IAaCsk36VkbbesdUgkzlXYU.V0s0OdUaJC278Yg6JIcG27PqwZ9VQ08nb4GsEPiz6IMWm1yNH_eu
 qRd_583WasTZ6TmbcJa_JIVgi1PixBhV1Sn5Cl2aUBtB33UfxAI0GGmcnnSl1uhamTY5pKwZ0u.6
 tni6tnCpgl9la4UNNoOTuwGst0VYLMgRWtyqxIZZBED7NAeJavrPgt2WLqLnTUUGAeTVt2j2Zfox
 yuBSkzKVPzTaX0ARuSsW5RHC1HApBkGuLZQArXD1iJ759njV9nW3.RfxWv3lKXDxV2Ozp6zSKaf2
 9tGJWo2p.XfydC5hXXA3sLqEiy0Ok3h6C_VReoyFg9dCWZRadUiH_KrlHfQiCr4o8TRrBPBQfM9y
 tx6F7AKsfef_gpGgkKJtGR0KMGoM2AZ.9lgd_Xm88VplrXnplaNG9UGOQVD7SWIOva786LpGbgUt
 fpre8kSWoENcKUZqpyDuVWjX.Ac.URAHNp7oOEo1ivROadUKSkptIvLlcHJtgI6i_T3wiV1czXUB
 fsD8.1xaxXDpZxbFYhX7cSuXyC.tiUXPXXMyB76IyhPn7mEVhZRw3OnBKLI_f2l16mjKFG2dNsG1
 RK.c0kumv1r2ezRHoNgmI_Ab3gdq2nDEblSovxnNKy1MA5qm7TU8slMt17ap58ZciiY7nTdI4nGt
 qarT9cIsOndv3oy.3_PzBJLvy_fTCngolJ2nXfYhaDwQU_otSz1i2vEMwuwW24H7lPaFCr9v5grT
 mBVqDAMcaF99chHZoAG2BllM2l55TPy1AbdPjts0oWuqIREI0svafh7Y5Q2eQON9Kh9Sd.gW65QE
 ME1C80zfOa3N2AgucFtBaqc2qeZ__F2Nwzf_bvESqAAnaEv0Uih9FDznhXRFHyua77m0bmUEhY0A
 oL1nBqhD1t00Rtmzqdlam8EsFjDR4.QmHvb4e3wTxviqL4CZqN7aXpZHCxwgHtn054rCawYD1Hyi
 HfBnlzr3z6E3rT1EvPImS1yd9pmZZUGt3uF1avO8jH935Zb6qAx0VC7R7aM6XM75vdNqKBtsnr3z
 f9q9lih1j0Qwu0fAMJhfpX2zXlSIDcN8WdThfRbMa4v5U_auUIq7EnF4ufb6am1gZDyQ3XUNNoXF
 Uf3P8obPLOliMKXzJ67QfY18pnQB6KnsEu6T_ZtEGtv7UJRKoGq_v9P34oqJH4oDazzxg5.PGBWr
 KhPhhCxUgk5nP5j9C34e0pvtGmcuzd3Wf4RjMOiYABCZlUpUOMMzRqbZJzkiCD_sYAazn_eRKoxO
 dAFpM.URTcAn9pz0HKALJrrnBzyK3DK6EkjBZnakt4.nCmJVZ.SpW4dyOX8wtSJBXRXj.NFMMpFz
 XWyTHL.byYbuV04iMUhhkYMByDjQdMQ4kHwQvVFnbgVMT0NwxmTp_sp4PRtHF5PGW2vVzY1FEIz5
 ODYPQlOJyIMpiQ9IR.Uuhq.OxEUw815hHlSNPbC7f7vLBNIyQuNZhuoSV20hZ8..Yl7.vG7tJuJJ
 flXG6D49XG7hvMTj_9480e2PlxW8awEGcVOfoRq3CFk1r6U4gGbZaKHqc1vhdBGKKzN41CL3FJAp
 Aidvn1UliTKiUaJNw5Mc2D6lUPHkyBtfWPjSbmNiQdqzheig49K7jDOMDLYVkI3YW6mytLCBP8kS
 a6pCi46NSK.tUmuFD7TKnVB_8Godao9HM9lM0FctD3Enju1xaK1sFALcJBZJSAaKr9gMTp7u8Dci
 fHRSTpnXMBZcWEmT_H6HsoQCF._3C9darfdxowdNdaJsfYETJk_Snxa0leI.23SwUBm9uJEGDCQY
 OZqYfwTbm6Z5S.g9uKulzZfyZcUnBAU2MGaP5CXbDJxBZgK1i9UiNFQSKoJ_Q6eDt.Xj46iH6lEc
 S6UB0SjnubLJUlssD3wBvMdzjLvRnEDQfFREuHQR3JOyca3aWSBgcaM3zG9IRM_lIYdd3hnQm7OT
 7IpkOhjBMC00F5K6vfs2_rZq4R3oVnXADGkjiwigFIFJnZSk7zdT.2A9yBnlXdfya.La8ODWXxRl
 UwkJ0T5JqimeZ9.5yvWysajiNAkWGNdzSub6EnEuf
X-Sonic-MF: <deaner92@yahoo.com>
X-Sonic-ID: 8fac883a-483c-4b84-b963-3c23456837dc
Received: from sonic.gate.mail.ne1.yahoo.com by sonic305.consmr.mail.bf2.yahoo.com with HTTP; Thu, 15 Oct 2026 02:21:11 +0000
Received: by hermes--production-bf1-6d6877594b-4bzzg (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID c701c841d9d059b8a0836afa4f7a7bcc;
          Thu, 15 Oct 2026 02:10:54 +0000 (UTC)
Message-ID: <b19b8058-bfe9-4800-95c8-d2db889b43e6@yahoo.com>
Date: Wed, 14 Oct 2026 20:10:49 -0600
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] staging: greybus: Remove unused header declaration
 to_fw_mgmt_connection
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Viresh Kumar <vireshk@kernel.org>, Johan Hovold <johan@kernel.org>,
 Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, outreachy@lists.linux.dev,
 greybus-dev@lists.linaro.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20261014174248.97561-1-deaner92.ref@yahoo.com>
 <20261014174248.97561-1-deaner92@yahoo.com>
 <2d2106c-a2d2-2bec-b368-c03850cba9a7@inria.fr>
Content-Language: en-US
From: Jeremy Clifton <deaner92@yahoo.com>
In-Reply-To: <2d2106c-a2d2-2bec-b368-c03850cba9a7@inria.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailer: WebService/1.1.26740 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo

On 10/14/26 7:46 PM, Julia Lawall wrote:
 >
 >
 > On Wed, 14 Oct 2026, Jeremy Dean Clifton wrote:
 >
 >> Previous commit removing a function definition did not remove the
 >> function prototype.
 >
 > Please use proper English.
 >
 > The commit 3228900f80c2 ("staging: greybus: Remove unused function
 > 'to_fw_mgmt_connection'") removing a function definition did not remove
 > the function prototype.
 >
 >>
 >> commit 3228900f80c2 ("staging: greybus: Remove unused function
 >> 'to_fw_mgmt_connection'")
 >>
 >> Function header declaration needs to be removed after definition
 >> removal.
 >
 > This is saying what you did.  It should be in the imperative:
 >
 > Remove the prototype.
 >

"Remove the prototype." in the imperative has been changed.

 >> There is no definition of this function nor is there any place where it
 >> is called.
 >
 > Not sure this is needed, since the definition was removed previously.

It's been removed.

The next revision is sent.

Jeremy
