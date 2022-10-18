Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E864C72
	for <outreachy@lists.linux.dev>; Tue, 18 Oct 2022 17:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1666114102; bh=29O4k3Bdj6nv7qgPJKpRvpe28ghTUQxWvcsPzrf9xZA=;
	h=X-EA-Auth:Date:From:To:Subject:Message-ID:MIME-Version:
	 Content-Type;
	b=cI+k56PkhUzBT9UyIB7OzpRBL/BXmuwG1bYwxttbKl9U7wmlL89yfz4VoCB1/YIaQ
	 WOTRle7G6+6jPGVYnkd0KJe+Ex+FwVnr1CpwWmVKwLyvZtM/rYPCr6YI+324Qla9jR
	 2kz4KQMVKIvySnJROpGSG6TvJUdi363HbYdI9zQs=
Received: by b-6.in.mailobj.net [192.168.90.16] with ESMTP
	via [213.182.55.206]
	Tue, 18 Oct 2022 19:28:22 +0200 (CEST)
X-EA-Auth: BQM41Cl+jVFmgGJT/iA6lbnYlVQk4wzniAomW/+SGio+YbTs66XSQP/8Rwx2GmsvRbP0VTYZ2sq5xps81aOobzCi2lQWfMWG
Date: Tue, 18 Oct 2022 22:58:19 +0530
From: Deepak R Varma <drv@mailo.com>
To: outreachy@lists.linux.dev
Subject: Patch set versioning
Message-ID: <Y07iMwCa9zHCcs1J@debian-BULLSEYE-live-builder-AMD64>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,
If I have a patch set with 5 patches included and only one of the patch needs to
undergo revision. In this situation, when I resubmit the patch set, do I mark
all patches as v2 along with the cover letter or should I just raise the
individual patch version and resubmit the patch set with all patches included?

Thank you,
./drv


