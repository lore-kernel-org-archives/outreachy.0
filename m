Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D7B26462
	for <outreachy@lists.linux.dev>; Wed, 23 Mar 2022 16:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648053978; x=1679589978;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=kbfIMVehWxVowQozegWsHKqIBfDqX1J1xmY5tKGmzWc=;
  b=Vhx+I2lGigNUzCwlZDqUyHpd09Gza/HL9XawHXj22ZPxw7eAkZRRX41M
   6zyJXynt48ofoX7PdPak2eP7HDD/GtwpmFLLoRN7V0Mo7uockygx4K+TD
   4TI+Wwa3jO1lTbUGASoB1OAH9W+lkUFecN5K3hS+i9s0QxrRKGOuLxFlA
   93NCERpx2ESM2fHzbGsauRFD5NIWNL7pmpcsNLu4c/50BL140oQO5/MXe
   kd7FuYT4PVKUcsjK7SPTt9Lr55FduYXsHQ2JPBpwyQPsQA6YR45kDbH8k
   0BHyaRba9R97FeCzN5DklBtGNhH1yHR9cg70VeSv7drBqXlijwx0ZZcoT
   w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="238768873"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; 
   d="scan'208";a="238768873"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2022 09:45:37 -0700
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; 
   d="scan'208";a="785853853"
Received: from alison-desk.jf.intel.com (HELO alison-desk) ([10.54.74.41])
  by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2022 09:45:37 -0700
Date: Wed, 23 Mar 2022 09:48:15 -0700
From: Alison Schofield <alison.schofield@intel.com>
To: hverkuil@xs4all.nl, gregkh@linuxfoundation.org
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Outreachy drivers/staging patch restrictions
Message-ID: <20220323164815.GA1141800@alison-desk>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Greg, Hans,

We are preparing to kick off the next contribution period for
Outreachy Interns. (March 25 - April 22)

Last round we ran with one restriction:
>> Do not send patches for drivers/staging/media/atomisp

Hans handled drivers/staging/media (except for atomisp) and
Greg picked up all the rest.

Will that work in the upcoming round?
Anything else contributors should be aware of for this round?

Thanks for your support,
Alison
