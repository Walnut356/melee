#include <platform.h>

#include "it_2725.h"

#include "it_266F.h"
#include "itcoll.h"

#include "ef/efsync.h"
#include "ft/ftlib.h"
#include "it/types.h"
#include "items/it_27CF.h"
#include "items/it_2ADA.h"
#include "items/it_2E5A.h"
#include "items/it_2E6A.h"
#include "items/it_2F28.h"
#include "items/itcerebi.h"
#include "items/itchicorita.h"
#include "items/itchicoritaleaf.h"
#include "items/itclimbersblizzard.h"
#include "items/itclimbersice.h"
#include "items/itclimbersstring.h"
#include "items/itclinkmilk.h"
#include "items/itcoin.h"
#include "items/itcrazyhandbomb.h"
#include "items/itdrmariopill.h"
#include "items/itentei.h"
#include "items/itfire.h"
#include "items/itfoxblaster.h"
#include "items/itfoxillusion.h"
#include "items/itfoxlaser.h"
#include "items/itfreezer.h"
#include "items/itfushigibana.h"
#include "items/itgamewatchbreath.h"
#include "items/itgamewatchchef.h"
#include "items/itgamewatchfire.h"
#include "items/itgamewatchgreenhouse.h"
#include "items/itgamewatchjudge.h"
#include "items/itgamewatchmanhole.h"
#include "items/itgamewatchpanic.h"
#include "items/itgamewatchparachute.h"
#include "items/itgamewatchrescue.h"
#include "items/itgamewatchturtle.h"
#include "items/ithassam.h"
#include "items/ithinoarashi.h"
#include "items/ithitodeman.h"
#include "items/ithouou.h"
#include "items/itkabigon.h"
#include "items/itkamex.h"
#include "items/itkirbycutterbeam.h"
#include "items/itkirbygamewatchchefpan.h"
#include "items/itkirbyhammer.h"
#include "items/itkireihana.h"
#include "items/itkoopaflame.h"
#include "items/itleadead.h"
#include "items/itlinkarrow.h"
#include "items/itlinkbomb.h"
#include "items/itlinkboomerang.h"
#include "items/itlinkbow.h"
#include "items/itlinkhookshot.h"
#include "items/itlizardon.h"
#include "items/itlucky.h"
#include "items/itlugia.h"
#include "items/itluigifireball.h"
#include "items/itmaril.h"
#include "items/itmariocape.h"
#include "items/itmariofireball.h"
#include "items/itmarumine.h"
#include "items/itmasterhandbullet.h"
#include "items/itmasterhandlaser.h"
#include "items/itmatadogas.h"
#include "items/itmetamon.h"
#include "items/itmew.h"
#include "items/itmewtwodisable.h"
#include "items/itmewtwoshadowball.h"
#include "items/itnessbat.h"
#include "items/itnessfirepillar.h"
#include "items/itnesspkfire.h"
#include "items/itnesspkflush.h"
#include "items/itnesspkflushexplode.h"
#include "items/itnesspkthunderball.h"
#include "items/itnesspkthundertrail.h"
#include "items/itnessyoyo.h"
#include "items/itoctarock.h"
#include "items/itoctarockstone.h"
#include "items/itoldkuri.h"
#include "items/itoldottosea.h"
#include "items/itpeachexplode.h"
#include "items/itpeachparasol.h"
#include "items/itpeachtoad.h"
#include "items/itpeachtoadspore.h"
#include "items/itpeachturnip.h"
#include "items/itpikachuthunder.h"
#include "items/itpikachutjoltair.h"
#include "items/itpikachutjoltground.h"
#include "items/itpippi.h"
#include "items/itporygon2.h"
#include "items/itraikou.h"
#include "items/itsamusbomb.h"
#include "items/itsamuschargeshot.h"
#include "items/itsamusgrapple.h"
#include "items/itsamusmissile.h"
#include "items/itseakchain.h"
#include "items/itseakneedleheld.h"
#include "items/itseakneedlethrown.h"
#include "items/itseakvanish.h"
#include "items/itsonans.h"
#include "items/itsuikun.h"
#include "items/itthunder.h"
#include "items/ittogepy.h"
#include "items/ittosakinto.h"
#include "items/itunknown.h"
#include "items/ityoshieggthrow.h"
#include "items/ityoshistar.h"
#include "items/itzeldadinfire.h"
#include "items/itzeldadinfireexplode.h"
#include "lb/lb_00B0.h"
#include "lb/lbaudio_ax.h"
#include "lb/lbcollision.h"
#include "lb/lbvector.h"
#include "mp/mpcoll.h"

#include <baselib/gobj.h>

struct sdata_ItemGXLink it_803F2310[] = {
    it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC,
    it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC,
    it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC,
    it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC,
    it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC,
    it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC,
    it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC,
    it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC,
    it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC, it_8026EECC,
    it_8026EECC, it_8026EECC,
};

ItemLogicTable it_803F23CC[ARRAY_SIZE(it_803F2310)] = {
    {
        // Tosakinto (Goldeen)
        it_803F7A48,
        it_802C8F4C,
        it_802C9504,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C8FC4,
    },
    {
        // Chicorita
        it_803F7A98,
        it_802C9588,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C961C,
    },
    {
        // Kabigon (Snorlax)
        it_803F7AD8,
        it_802C9D40,
        it_802C9E00,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C9E24,
    },
    {
        // Kamex (Blastoise)
        it_803F7B08,
        it_802CA49C,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CA538,
    },
    {
        // Matadogas (Weezing)
        it_803F7B58,
        it_802CAFD4,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CB0F8,
    },
    {
        // Lizardon (Charizard)
        it_803F7BC0,
        it_802CB8AC,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CB940,
    },
    {
        // Fire (Moltres)
        it_803F7C10,
        it_802CC6E4,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CC744,
    },
    {
        // Thunder (Zapdos)
        it_803F7C40,
        it_802CCAB4,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CCB14,
    },
    {
        // Freezer (Articuno)
        it_803F7C70,
        it_802CCF9C,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CD000,
    },
    {
        // Sonans (Wobbuffet)
        it_803F7CA0,
        it_802CD44C,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CD7B8,
        it_802CD7D4,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CD4DC,
    },
    {
        // Hassam (Scizor)
        it_803F7CF8,
        it_802CDBE0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CDC60,
    },
    {
        // Unknown (Unown)
        it_803F7D60,
        it_802CE710,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CE7D0,
    },
    {
        // Entei
        it_803F7DC8,
        it_802CF3E0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CF450,
    },
    {
        // Raikou
        it_803F7DE8,
        it_802CF814,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CF884,
    },
    {
        // Suikun (Suicune)
        it_803F7E08,
        it_802CFC48,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CFCB8,
    },
    {
        // Kireihana (Bellossom)
        it_803F7E28,
        it_802D007C,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D0118,
    },
    {
        // Marumine (Electrode)
        it_803F7E78,
        it_802D0A0C,
        NULL,
        it_802D0D18,
        it_802D0E30,
        it_802D0E90,
        it_802D0AD0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D0AB0,
    },
    {
        // Lugia
        it_803F7EE8,
        it_802D1438,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D14D4,
    },
    {
        // Houou (Ho-oh)
        it_803F7F58,
        it_802D251C,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D25BC,
    },
    {
        // Metamon (Ditto)
        it_803F7FC8,
        it_802D3008,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D3070,
    },
    {
        // Pippi (Clefairy)
        it_803F7FF8,
        it_802D3260,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D32DC,
    },
    {
        // Togepy
        it_803F8058,
        it_802D36B0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D372C,
    },
    {
        // Mew
        it_803F80C8,
        it_802D3B18,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D3B6C,
    },
    {
        // Cerebi
        it_803F80F8,
        it_802D3EF8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D3F4C,
    },
    {
        // Hitodeman (Staryu)
        it_803F8128,
        it_802D42C4,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D43B0,
    },
    {
        // Lucky (Chansey)
        it_803F8190,
        it_802D5050,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D5648,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D56F0,
    },
    {
        // Porygon2
        it_803F8250,
        it_802D5ABC,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D5CD8,
    },
    {
        // Hinoarashi (Cyndaquil)
        it_803F8270,
        it_802D5CF8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D6100,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D61A8,
    },
    {
        // Maril
        it_803F82B0,
        it_802D6870,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D6F00,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D6FB0,
    },
    {
        // Fushigibana (Venusaur)
        it_803F82F0,
        it_802D6FD0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D73D0,
    },
    {
        // Chicorita leaf
        it_803F7AC8,
        it_802C9C20,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C9C78,
        NULL,
        NULL,
        it_802C9CA0,
        it_802C9C78,
        it_802C9C78,
        NULL,
        it_802C9C78,
        it_802C9C80,
    },
    {
        // Kamex hydro pump
        it_803F7B48,
        it_802CACD0,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CADC8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CADC0,
        it_802CADD0,
    },
    {
        // Matadogas gas 1
        it_803F7BB0,
        it_802CB690,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CB778,
    },
    {
        // Matadogas gas 2
        it_803F7BB0,
        it_802CB704,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CB778,
    },
    {
        // Lizardon flame 1
        it_803F7C00,
        it_802CC3D4,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CC5A4,
        NULL,
        it_802CC5CC,
        NULL,
        it_802CC5C4,
        it_802CC584,
    },
    {
        // Lizardon flame 2
        it_803F7C00,
        it_802CC440,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CC5A4,
        NULL,
        it_802CC5CC,
        NULL,
        it_802CC5C4,
        it_802CC584,
    },
    {
        // Lizardon flame 3
        it_803F7C00,
        it_802CC4AC,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CC5A4,
        NULL,
        it_802CC5CC,
        NULL,
        it_802CC5C4,
        it_802CC584,
    },
    {
        // Lizardon flame 4
        it_803F7C00,
        it_802CC518,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CC5A4,
        NULL,
        it_802CC5CC,
        NULL,
        it_802CC5C4,
        it_802CC584,
    },
    {
        // Unknown swarm (mini-unowns)
        it_803F7D90,
        it_802CEEC8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802CF0B4,
    },
    {
        // Lugia aeroblast 1
        it_803F7F48,
        it_802D2308,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D23D4,
    },
    {
        // Lugia aeroblast 2
        it_803F7F48,
        it_802D234C,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D23D4,
    },
    {
        // Lugia aeroblast 3
        it_803F7F48,
        it_802D2390,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D23D4,
    },
    {
        // Houou sacred fire
        it_803F7FB8,
        it_802D2E80,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D2ED0,
    },
    {
        // Hitodeman star
        it_803F8180,
        it_802D4DE0,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D4EF4,
        NULL,
        NULL,
        it_802D4F28,
        NULL,
        it_802D4F48,
        it_802D4F08,
        it_802D4F50,
        it_802D4F58,
    },
    {
        // Lucky egg
        it_803F8200,
        it_802D57D0,
        NULL,
        it_802D59A8,
        it_802D59DC,
        NULL,
        NULL,
        NULL,
        it_802D5A04,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D5A9C,
    },
    {
        // Hinoarashi flame
        it_803F82A0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802D6808,
        NULL,
        NULL,
        it_802D6810,
        it_802D6830,
        it_802D6838,
        it_802D6840,
        it_802D6848,
        it_802D6850,
    },
    {
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
    },
};

// Character-specific items
struct ItemLogicTable it_803F3100[] = {
    {
        // Kuriboh
        it_803F8320,
        it_802D73F0,
        it_8027C8B0,
        it_802D7C14,
        it_802D7CB4,
        it_802D7D18,
        NULL,
        it_802D7F38,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
    },
    {
        // Leadead
        it_803F8EB0,
        it_802E8BCC,
        it_802EA41C,
        it_802EA0E0,
        it_802EA154,
        it_802EA1B4,
        NULL,
        it_802E8CD8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
    },
    {
        // Octarock
        it_803F8B48,
        it_802E4A44,
        it_8027C8B0,
        it_802E561C,
        it_802E5690,
        it_802E56E8,
        NULL,
        it_802E4B00,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802E5AA4,
    },
    {
        // Ottosea
        it_803F89C8,
        it_802E2470,
        it_802E34DC,
        it_802E31F8,
        it_802E32B4,
        it_802E3314,
        NULL,
        it_802E257C,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802E3784,
    },
    {
        // Octarock stone
        it_803F8E90,
        it_802E878C,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802E87D8,
        NULL,
        NULL,
        it_802E87F8,
        it_802E87E0,
        it_802E87F0,
        it_802E881C,
        it_802E87E8,
        it_802E89B0,
    },
    {
        // Mario fireball
        it_803F6788,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_8029BA38,
        NULL,
        NULL,
        it_8029BA40,
        it_8029BA60,
        it_8029BA70,
        it_8029BA78,
        it_8029BA68,
        it_8029BA98,
    },
    {
        // Dr Mario pill
        it_803F75D0,
        NULL,
        NULL,
        it_802C11E0,
        NULL,
        NULL,
        it_802C1384,
        NULL,
        NULL,
        it_802C13CC,
        it_802C1400,
        it_802C14B8,
        it_802C1514,
        it_802C145C,
        it_802C1570,
    },
    {
        // Kirby cutter beam
        it_803F6798,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_8029BFB4,
        NULL,
        NULL,
        it_8029BFCC,
        it_8029BFBC,
        it_8029BFC4,
        it_8029C208,
        it_8029C4AC,
        it_8029C4B4,
    },
    {
        // Kirby hammer
        it_803F6C98,
        NULL,
        it_802ADC04,
        it_802ADD88,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802ADDB0,
    },
    {
        it_803F6C88,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802ADBE4,
    },
    {
        it_803F9470,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802F2BDC,
    },
    {
        // Fox laser
        it_803F67D0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_8029CA78,
        NULL,
        NULL,
        it_8029CA80,
        it_8029CA78,
        it_8029CC4C,
        it_8029CC54,
        it_8029CCF0,
        it_8029CCF8,
    },
    {
        // Falco laser
        it_803F67D0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_8029CA78,
        NULL,
        NULL,
        it_8029CA80,
        it_8029CA78,
        it_8029CC4C,
        it_8029CC54,
        it_8029CCF0,
        it_8029CCF8,
    },
    {
        // Fox illusion
        it_803F6818,
        NULL,
        it_8029CFA0,
        NULL,
        NULL,
        NULL,
        it_8029CF8C,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_8029D948,
    },
    {
        // Falco phantasm
        it_803F6818,
        NULL,
        it_8029CFA0,
        NULL,
        NULL,
        NULL,
        it_8029CF8C,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_8029D948,
    },
    {
        // Link bomb
        it_803F6888,
        NULL,
        NULL,
        it_8029DEB0,
        it_8029EC34,
        it_8029E5D0,
        it_8029F960,
        it_8029FA30,
        it_8029FB24,
        it_8029FD20,
        NULL,
        NULL,
        it_8029FD64,
        it_8029FD40,
        it_8029FD84,
    },
    {
        // Young Link bomb
        it_803F6888,
        NULL,
        NULL,
        it_8029DEB0,
        it_8029EC34,
        it_8029E5D0,
        it_8029F960,
        it_8029FA30,
        it_8029FB24,
        it_8029FD20,
        NULL,
        NULL,
        it_8029FD64,
        it_8029FD40,
        it_8029FD84,
    },
    {
        // Link boomerang
        it_803F6920,
        NULL,
        it_802A087C,
        it_802A0E70,
        it_802A0F84,
        it_802A0F88,
        it_802A1F08,
        NULL,
        NULL,
        it_802A20E8,
        it_802A1FA8,
        it_802A2048,
        it_802A2320,
        it_802A2288,
        it_802A23CC,
    },
    {
        // Young Link boomerang
        it_803F6920,
        NULL,
        it_802A087C,
        it_802A0E70,
        it_802A0F84,
        it_802A0F88,
        it_802A1F08,
        NULL,
        NULL,
        it_802A20E8,
        it_802A1FA8,
        it_802A2048,
        it_802A2320,
        it_802A2288,
        it_802A23CC,
    },
    {
        // Link hookshot
        it_803F6998,
        it_802A2418,
        NULL,
        it_802A7688,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802A7D40,
    },
    {
        // Young Link hookshot
        it_803F6998,
        NULL,
        NULL,
        it_802A7688,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802A7D40,
    },
    {
        // Link arrow
        it_803F6A28,
        NULL,
        it_802A8984,
        it_802A8AF8,
        NULL,
        NULL,
        it_802A9A80,
        NULL,
        NULL,
        it_802A9D4C,
        it_802A9CE0,
        NULL,
        NULL,
        it_802A9B08,
        it_802AA034,
    },
    {
        // Young Link arrow
        it_803F6A28,
        NULL,
        it_802A8984,
        it_802A8AF8,
        NULL,
        NULL,
        it_802A9A80,
        NULL,
        NULL,
        it_802A9D4C,
        it_802A9CE0,
        NULL,
        NULL,
        it_802A9B08,
        it_802AA034,
    },
    {
        // Ness PK fire
        it_803F6B28,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AA284,
        NULL,
        NULL,
        it_802AA35C,
        it_802AA2E8,
        it_802AA34C,
        it_802AA37C,
        it_802AA354,
        it_802AA474,
    },
    {
        // Ness PK fire pillar
        it_803F6B60,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AA75C,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AA7C4,
    },
    {
        // Ness PK flash
        it_803F6B70,
        NULL,
        it_802AA9CC,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AB2AC,
        it_802AB3C0,
        it_802AB3C8,
        NULL,
        NULL,
        it_802AB3D0,
    },
    {
        // Ness PK thunder ball
        it_803F6BC8,
        NULL,
        it_802AB90C,
        NULL,
        NULL,
        NULL,
        it_802AC050,
        NULL,
        NULL,
        it_802AC098,
        it_802AC074,
        it_802AC338,
        it_802AC35C,
        it_802AC3F8,
        it_802AC41C,
    },
    {
        // Ness PK thunder trail 1
        it_803F6C08,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
    },
    {
        // Ness PK thunder trail 2
        it_803F6C08,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
    },
    {
        // Ness PK thunder trail 3
        it_803F6C08,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
    },
    {
        // Ness PK thunder trail 4
        it_803F6C08,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
    },
    {
        // Fox blaster
        it_803F6CA8,
        NULL,
        NULL,
        it_802AEB00,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AF184,
    },
    {
        // Falco blaster
        it_803F6CA8,
        NULL,
        NULL,
        it_802AEB00,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AF184,
    },
    {
        // Link bow
        it_803F6E98,
        NULL,
        it_802AF298,
        it_802AF434,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AF920,
    },
    {
        // Young Link bow
        it_803F6E98,
        NULL,
        it_802AF298,
        it_802AF434,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AF920,
    },
    {
        // Ness PK flush explode
        it_803F6F40,
        NULL,
        it_802AFA2C,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AFD4C,
        it_802AFD54,
        it_802AFD5C,
        it_802AFD64,
        it_802AFD6C,
    },
    {
        // Sheik needle thrown
        it_803F6F50,
        NULL,
        it_802AFEF8,
        NULL,
        NULL,
        NULL,
        it_802B0D84,
        it_802B10E4,
        NULL,
        it_802B1294,
        it_802B0F34,
        NULL,
        it_802B14DC,
        it_802B16E4,
        it_802B1890,
    },
    {
        // Sheik needle held
        it_803F70A8,
        NULL,
        NULL,
        it_802B1AAC,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802B1C40,
    },
    {
        // Pikachu thunder
        it_803F70C8,
        NULL,
        it_802B202C,
        NULL,
        NULL,
        NULL,
        it_802B2508,
        NULL,
        NULL,
        NULL,
        it_802B2518,
        it_802B2520,
        NULL,
        it_802B2510,
        it_802B2528,
    },
    {
        // Pichu thunder
        it_803F70C8,
        NULL,
        it_802B202C,
        NULL,
        NULL,
        NULL,
        it_802B2508,
        NULL,
        NULL,
        NULL,
        it_802B2518,
        it_802B2520,
        NULL,
        it_802B2510,
        it_802B2528,
    },
    {
        // Mario cape
        it_803F70F8,
        NULL,
        it_802B2644,
        it_802B2700,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802B2870,
    },
    {
        // Dr Mario cape
        it_803F70F8,
        NULL,
        it_802B2644,
        it_802B2700,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802B2870,
    },
    {
        // Sheik vanish
        it_803F70B8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802B1D38,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802B1DCC,
    },
    {
        // Yoshi egg throw
        it_803F7118,
        NULL,
        NULL,
        it_802B2AE0,
        NULL,
        NULL,
        it_802B2C04,
        NULL,
        NULL,
        it_802B2E5C,
        it_802B2D50,
        NULL,
        it_802B2F88,
        it_802B2E7C,
        it_802B2FA8,
    },
    {
        // Yoshi egg lay
        it_803F94A0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802F3330,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802F3374,
    },
    {
        // Yoshi star
        it_803F7158,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802B309C,
        NULL,
        NULL,
        it_802B314C,
        it_802B30C0,
        it_802B3108,
        it_802B312C,
        it_802B30E4,
        it_802B3348,
    },
    {
        // Pikachu tjolt ground
        it_803F7190,
        NULL,
        it_802B34E4,
        NULL,
        NULL,
        NULL,
        it_802B3A94,
        NULL,
        NULL,
        it_802B3AF8,
        it_802B3C44,
        it_802B3CA8,
        it_802B3D70,
        it_802B3D0C,
        it_802B3EDC,
    },
    {
        // Pikachu tjolt air
        it_803F71D8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802B45F0,
        NULL,
        NULL,
        it_802B46C8,
        it_802B4638,
        it_802B4680,
        it_802B4A60,
        it_802B4A18,
        it_802B4AA8,
    },
    {
        // Pichu tjolt ground
        it_803F7190,
        NULL,
        it_802B34E4,
        NULL,
        NULL,
        NULL,
        it_802B3A94,
        NULL,
        NULL,
        it_802B3AF8,
        it_802B3C44,
        it_802B3CA8,
        it_802B3D70,
        it_802B3D0C,
        it_802B3EDC,
    },
    {
        // Pichu tjolt air
        it_803F71D8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802B45F0,
        NULL,
        NULL,
        it_802B46C8,
        it_802B4638,
        it_802B4680,
        it_802B4A60,
        it_802B4A18,
        it_802B4AA8,
    },
    {
        // Samus bomb
        it_803F7220,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802B52B8,
        NULL,
        it_802B4F78,
        it_802B5374,
        it_802B52EC,
        NULL,
        it_802B5354,
        it_802B5320,
        it_802B54E4,
    },
    {
        // Samus charge shot
        it_803F7288,
        NULL,
        it_802B58D8,
        it_802B59C4,
        NULL,
        NULL,
        it_802B5FD8,
        NULL,
        NULL,
        it_802B5FF0,
        it_802B5FE0,
        it_802B5FE8,
        it_802B6144,
        it_802B613C,
        it_802B62B0,
    },
    {
        // Samus missile
        it_803F7340,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802B6C28,
        NULL,
        NULL,
        it_802B6E4C,
        it_802B6C7C,
        NULL,
        it_802B6D24,
        it_802B6CD0,
        it_802B7104,
    },
    {
        // Samus grapple beam
        it_803F73A8,
        it_802B7150,
        NULL,
        it_802BA97C,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802BAEA0,
    },
    {
        // Sheik chain
        it_803F7438,
        NULL,
        NULL,
        it_802BCE94,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802BD10C,
    },
    {
        // Peach explode
        it_803F7488,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802BD240,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802BD30C,
    },
    {
        // Peach turnip
        it_803F74A8,
        NULL,
        it_802BD47C,
        it_802BD628,
        it_802BD8CC,
        it_802BD748,
        it_802BD938,
        NULL,
        NULL,
        it_802BD99C,
        it_802BD978,
        NULL,
        it_802BD9E4,
        it_802BD9C0,
        it_802BDA08,
    },
    {
        // Bowser flame
        it_803F6C58,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AD2E8,
        NULL,
        NULL,
        it_802AD2F0,
        it_802AD384,
        it_802AD38C,
        it_802AD3B0,
        it_802AD450,
        it_802AD458,
    },
    {
        // Ness bat
        it_803F6C68,
        NULL,
        NULL,
        it_802AD6F0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AD9FC,
    },
    {
        // Ness yo-yo
        it_803F7558,
        NULL,
        NULL,
        it_802BFE34,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C016C,
    },
    {
        // Peach parasol
        it_803F74F8,
        NULL,
        it_802BDB4C,
        it_802BDC74,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802BDDF8,
    },
    {
        // Peach toad
        it_803F7528,
        NULL,
        it_802BDEFC,
        it_802BDFE0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802BE1F4,
    },
    {
        // Luigi fireball
        it_803F75C0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C0490,
        NULL,
        NULL,
        it_802C0498,
        it_802C04B8,
        it_802C04C8,
        it_802C04D0,
        it_802C04C0,
        it_802C04F0,
    },
    {
        // Ice Climbers ice
        it_803F7668,
        NULL,
        it_802C17FC,
        NULL,
        NULL,
        NULL,
        it_802C1FC8,
        NULL,
        NULL,
        it_802C1FD0,
        it_802C1FF0,
        it_802C20E4,
        it_802C20EC,
        it_802C1FF8,
        it_802C210C,
    },
    {
        // Ice Climbers blizzard
        it_803F76A8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C2424,
        NULL,
        NULL,
        it_802C242C,
        it_802C244C,
        it_802C245C,
        it_802C2464,
        it_802C2454,
        it_802C246C,
    },
    {
        // Zelda din fire
        it_803F76F8,
        NULL,
        it_802C3CBC,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C443C,
        it_802C4550,
        it_802C4558,
        NULL,
        NULL,
        it_802C4560,
    },
    {
        // Zelda din fire explode
        it_803F7740,
        NULL,
        it_802C4670,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C49A0,
        it_802C49A8,
        it_802C49B0,
        it_802C49B8,
        it_802C49C0,
    },
    {
        // Mewtwo disable
        it_803F7750,
        NULL,
        it_802C4A00,
        NULL,
        NULL,
        NULL,
        it_802C4C90,
        NULL,
        NULL,
        it_802C4C98,
        it_802C4CB8,
        it_802C4CC8,
        it_802C4CD0,
        it_802C4CC0,
        it_802C4CD8,
    },
    {
        // Peach toad spore
        it_803F7548,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802BE488,
        NULL,
        NULL,
        it_802BE538,
        it_802BE4AC,
        it_802BE4F4,
        it_802BE518,
        it_802BE4D0,
        it_802BE578,
    },
    {
        // Mewtwo shadow ball
        it_803F7760,
        NULL,
        it_802C56A0,
        it_802C578C,
        NULL,
        NULL,
        it_802C60B4,
        NULL,
        NULL,
        it_802C60CC,
        it_802C60BC,
        it_802C60C4,
        it_802C6140,
        it_802C6138,
        it_802C61D4,
    },
    {
        // Ice Climbers string (belay)
        it_803F76B8,
        NULL,
        NULL,
        it_802C37BC,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C3AA4,
    },
    {
        // Game & Watch greenhouse (insecticide spray)
        it_803F7898,
        NULL,
        it_802C62F8,
        it_802C63B4,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C65C4,
    },
    {
        // Game & Watch manhole
        it_803F78D8,
        NULL,
        it_802C66E8,
        it_802C67A4,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C68D8,
    },
    {
        // Game & Watch fire
        it_803F78E8,
        NULL,
        it_802C69FC,
        it_802C6AB8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C6C18,
    },
    {
        // Game & Watch parachute
        it_803F78F8,
        NULL,
        it_802C6D3C,
        it_802C6DF8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C6F20,
    },
    {
        // Game & Watch turtle
        it_803F7918,
        NULL,
        it_802C7044,
        it_802C7100,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C71EC,
    },
    {
        // Game & Watch breath
        it_803F7938,
        NULL,
        it_802C7310,
        it_802C73CC,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C74B8,
    },
    {
        // Game & Watch judge
        it_803F7968,
        NULL,
        it_802C7A54,
        it_802C7B10,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C7D40,
    },
    {
        // Game & Watch panic
        it_803F79A0,
        NULL,
        it_802C7E64,
        it_802C7F20,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C8018,
    },
    {
        // Game & Watch chef
        it_803F79E0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C847C,
        NULL,
        NULL,
        it_802C8A28,
        it_802C88E4,
        it_802C899C,
        it_802C8A08,
        it_802C8940,
        it_802C8B08,
    },
    {
        // Young Link milk
        it_803F7A28,
        NULL,
        NULL,
        it_802C8C74,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C8F2C,
    },
    {
        // Game & Watch rescue
        it_803F79C0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C835C,
    },
    {
        // Master Hand laser
        it_803F9378,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802F044C,
    },
    {
        // Master Hand bullet
        it_803F9388,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802F0F0C,
        NULL,
        NULL,
        it_802F0F14,
        it_802F0F34,
        it_802F0F3C,
        it_802F0F44,
        it_802F0F64,
        it_802F0BC8,
    },
    {
        // Crazy Hand laser
        it_803F9378,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802F044C,
    },
    {
        // Crazy Hand bullet
        it_803F9388,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802F0BC8,
    },
    {
        // Crazy Hand bomb
        it_803F93A8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802F10B4,
        NULL,
        NULL,
        it_802F10D8,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802F1094,
    },
    {
        it_803F6788,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_8029BA38,
        NULL,
        NULL,
        it_8029BA40,
        it_8029BA60,
        it_8029BA70,
        it_8029BA78,
        it_8029BA68,
        it_8029BA98,
    },
    {
        it_803F75D0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C1384,
        NULL,
        NULL,
        it_802C13CC,
        it_802C1400,
        it_802C14B8,
        it_802C1514,
        it_802C145C,
        it_802C1570,
    },
    {
        it_803F75C0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C0490,
        NULL,
        NULL,
        it_802C0498,
        it_802C04B8,
        it_802C04C8,
        it_802C04D0,
        it_802C04C0,
        it_802C04F0,
    },
    {
        it_803F7668,
        NULL,
        it_802C17FC,
        NULL,
        NULL,
        NULL,
        it_802C1FC8,
        NULL,
        NULL,
        it_802C1FD0,
        it_802C1FF0,
        it_802C20E4,
        it_802C20EC,
        it_802C1FF8,
        it_802C210C,
    },
    {
        it_803F7528,
        NULL,
        it_802BDEFC,
        it_802BDFE0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802BE1F4,
    },
    {
        it_803F7548,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802BE488,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802BE578,
    },
    {
        it_803F67D0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_8029CA78,
        NULL,
        NULL,
        it_8029CA80,
        it_8029CA78,
        it_8029CC4C,
        it_8029CC54,
        it_8029CCF0,
        it_8029CCF8,
    },
    {
        it_803F67D0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_8029CA78,
        NULL,
        NULL,
        it_8029CA80,
        it_8029CA78,
        it_8029CC4C,
        it_8029CC54,
        it_8029CCF0,
        it_8029CCF8,
    },
    {
        it_803F6CA8,
        NULL,
        NULL,
        it_802AEB00,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AF184,
    },
    {
        it_803F6CA8,
        NULL,
        NULL,
        it_802AEB00,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AF184,
    },
    {
        it_803F6A28,
        NULL,
        it_802A8984,
        it_802A8AF8,
        NULL,
        NULL,
        it_802A9A80,
        NULL,
        NULL,
        it_802A9D4C,
        it_802A9CE0,
        NULL,
        NULL,
        it_802A9B08,
        it_802AA034,
    },
    {
        it_803F6A28,
        NULL,
        it_802A8984,
        it_802A8AF8,
        NULL,
        NULL,
        it_802A9A80,
        NULL,
        NULL,
        it_802A9D4C,
        it_802A9CE0,
        NULL,
        NULL,
        it_802A9B08,
        it_802AA034,
    },
    {
        it_803F6E98,
        NULL,
        it_802AF298,
        it_802AF434,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AF920,
    },
    {
        it_803F6E98,
        NULL,
        it_802AF298,
        it_802AF434,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AF920,
    },
    {
        it_803F7760,
        NULL,
        it_802C56A0,
        it_802C578C,
        NULL,
        NULL,
        it_802C60B4,
        NULL,
        NULL,
        it_802C60CC,
        it_802C60BC,
        it_802C60C4,
        it_802C6140,
        it_802C6138,
        it_802C61D4,
    },
    {
        it_803F6B70,
        NULL,
        it_802AA9CC,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AB2AC,
        it_802AB3C0,
        it_802AB3C8,
        NULL,
        NULL,
        it_802AB3D0,
    },
    {
        it_803F6F40,
        NULL,
        it_802AFA2C,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AFD4C,
        it_802AFD54,
        it_802AFD5C,
        it_802AFD64,
        it_802AFD6C,
    },
    {
        it_803F7190,
        NULL,
        it_802B34E4,
        NULL,
        NULL,
        NULL,
        it_802B3A94,
        NULL,
        NULL,
        it_802B3AF8,
        it_802B3C44,
        it_802B3CA8,
        it_802B3D70,
        it_802B3D0C,
        it_802B3EDC,
    },
    {
        it_803F71D8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802B45F0,
        NULL,
        NULL,
        it_802B46C8,
        it_802B4638,
        it_802B4680,
        it_802B4A60,
        it_802B4A18,
        it_802B4AA8,
    },
    {
        it_803F7190,
        NULL,
        it_802B34E4,
        NULL,
        NULL,
        NULL,
        it_802B3A94,
        NULL,
        NULL,
        it_802B3AF8,
        it_802B3C44,
        it_802B3CA8,
        it_802B3D70,
        it_802B3D0C,
        it_802B3EDC,
    },
    {
        it_803F71D8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802B45F0,
        NULL,
        NULL,
        it_802B46C8,
        it_802B4638,
        it_802B4680,
        it_802B4A60,
        it_802B4A18,
        it_802B4AA8,
    },
    {
        it_803F7288,
        NULL,
        it_802B58D8,
        it_802B59C4,
        NULL,
        NULL,
        it_802B5FD8,
        NULL,
        NULL,
        it_802B5FF0,
        it_802B5FE0,
        it_802B5FE8,
        it_802B6144,
        it_802B613C,
        it_802B62B0,
    },
    {
        it_803F6F50,
        NULL,
        it_802AFEF8,
        NULL,
        NULL,
        NULL,
        it_802B0D84,
        it_802B10E4,
        NULL,
        it_802B1294,
        it_802B0F34,
        NULL,
        it_802B14DC,
        it_802B16E4,
        it_802B1890,
    },
    {
        it_803F70A8,
        NULL,
        NULL,
        it_802B1AAC,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802B1C40,
    },
    {
        it_803F6C58,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802AD2E8,
        NULL,
        NULL,
        it_802AD2F0,
        it_802AD384,
        it_802AD38C,
        it_802AD3B0,
        it_802AD450,
        it_802AD458,
    },
    {
        it_803F79E0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C847C,
        NULL,
        NULL,
        it_802C8A28,
        it_802C88E4,
        it_802C899C,
        it_802C8A08,
        it_802C8940,
        it_802C8B08,
    },
    {
        it_803F7958,
        NULL,
        it_802C75DC,
        it_802C7698,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802C7754,
    },
    {
        it_803F94A0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802F3330,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802F3374,
    },
    {
        // Unk4
        it_803F8BD8,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802E6A40,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802E6ACC,
    },
    {
        // Coin
        it_803F93C8,
        it_802F14E4,
        it_802F1518,
        it_802F1888,
        it_802F1CE0,
        it_802F1CE0,
        NULL,
        it_802F1910,
        it_802F1F48,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802F18F0,
    },
    {
        // Pokemon random
        it_803F8C8C,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802E6F7C,
        it_802E6FC0,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        NULL,
        it_802E709C,
    },
};

static void it_8027129C_by_4(HSD_GObj* arg0)
{
    u32 var_r31 = 0;
    for (; var_r31 < 4; var_r31++) {
        it_8027129C(arg0, var_r31);
    }
}

void it_80272560(HSD_GObj* arg0, s32 arg1)
{
    Item* temp_r30;
    s32 stack[2];

    temp_r30 = arg0->user_data;
    lbColl_80008428(&temp_r30->x5D4_hitboxes[arg1].hit);
    temp_r30->xDAA_flag.bits.b2 = false;

    it_8027129C_by_4(arg0);
}

void it_802725D4(HSD_GObj* arg0)
{
    u32 i;
    Item* temp_r30 = arg0->user_data;
    u8* var_r31 = ((u8*) temp_r30);

    for (i = 0; i < 4; ++i) {
        lbColl_80008428((HitCapsule*) (var_r31 + (i * 0x13c) + 0x5d4));
    }

    for (i = 0; i < 4; ++i) {
        it_8027129C(arg0, i);
    }
    // lol. 0xDC8 should probably be split into 4 bitfields
    ((UnkFlagStruct*) ((u8*) temp_r30 + 0xDCA))->bits.b6 = 0;
    temp_r30->xDAA_flag.bits.b2 = 0;
}

void it_80272674(Item_GObj* arg0, s32 idx)
{
    HitCapsuleState state;
    Item* item = arg0->user_data;
    HitCapsule* hitbox;
    s32 stack[2];

    lbColl_80008434(&item->x5D4_hitboxes[idx].hit);
    ((UnkFlagStruct*) ((u8*) item + 0xDCA))->bits.b6 = 1;

    item = arg0->user_data;
    hitbox = &item->x5D4_hitboxes[idx].hit;
    state = hitbox->state;

    switch (state) { /* irregular */
    case 1:
        lb_8000B1CC(hitbox->jobj, &hitbox->b_offset, &hitbox->x4C);
        hitbox->x58 = hitbox->x4C;
        hitbox->state = 2;
        item->xDAA_flag.bits.b2 = 1;
        return;
    case 2:
        hitbox->state = 3;
        /* fallthrough */
    case 3:
        hitbox->x58 = hitbox->x4C;
        lb_8000B1CC(hitbox->jobj, &hitbox->b_offset, &hitbox->x4C);
        /* fallthrough */
    case 4:
    case 0:
        return;
    }
}

extern inline void __func(HSD_GObj* arg0)
{
    u32 i;
    for (i = 0; i < 4; ++i) {
        it_8027129C(arg0, i);
    }
}

void it_80272784(HSD_GObj* arg0)
{
    u32 i;
    Item* temp_r30 = arg0->user_data;
    u8* var_r31 = ((u8*) temp_r30);

    for (i = 0; i < 4; ++i) {
        lbColl_80008434((HitCapsule*) (var_r31 + (i * 0x13c) + 0x5d4));
    }
    ((UnkFlagStruct*) ((u8*) temp_r30 + 0xDCA))->bits.b6 = 1;

    __func(arg0);
}

// get special attributes
s32 it_80272818(Item* arg0)
{
    return *(s32*) arg0->xC4_article_data->x4_specialAttributes;
}

// TODO it_80272828 97.14% match, see scratch: https://decomp.me/scratch/bNDwr

extern volatile f32 it_804DC708;

void it_80272860(Item_GObj* arg0, f32 arg1, f32 arg2)
{
    Item* item;
    f32 var_f3;
    s32 var_r0;
    s32 var_r3;

    item = arg0->user_data;
    // if these aren't ternaries it allocates registers differently .-.
    var_r0 = arg1 < it_804DC708 ? -1 : 1;

    var_f3 = item->x40_vel.y;

    var_r3 = var_f3 < it_804DC708 ? -1 : 1;

    if (var_r3 != var_r0) {
        if (var_f3 < it_804DC708) {
            var_f3 = -var_f3;
        }
        if (var_f3 < arg2) {
        label_1:
            item->x40_vel.y -= arg1;
            return;
        }
        return;
    }
    // big dumb
    goto label_1;
}

void it_802728C8(Item_GObj* gobj)
{
    u32 rem;
    HSD_JObj* var_r0;
    void* temp_r4;
    s32 stack[4];

    temp_r4 = gobj->hsd_obj;
    var_r0 = temp_r4 == NULL ? NULL : (HSD_JObj*) *((s32*) temp_r4 + 4);
    rem = (u32) (s32) ((Item*) (gobj->user_data))->xD44_lifeTimer %
          it_804D6D28->x44_float;
    if (rem != 0) {
        HSD_JObjClearFlagsAll(var_r0, 0x10U);
        return;
    }
    HSD_JObjSetFlagsAll(var_r0, 0x10U);
}

void it_80272940(HSD_GObj* arg0)
{
    HSD_JObj* var_r0;
    void* temp_r3;

    temp_r3 = arg0->hsd_obj;
    var_r0 = temp_r3 == NULL ? NULL : (HSD_JObj*) *((s32*) temp_r3 + 4);
    HSD_JObjClearFlagsAll(var_r0, 0x10U);
}

extern volatile f32 it_804DC708;
extern f32 it_804DC70C;
extern f32 it_804DC710;
extern f32 it_804DC714;

void it_80272980(Item_GObj* arg0)
{
    f32 var_f0;
    f32 var_f1;
    s32 var_r4;
    Item* temp_r3;

    temp_r3 = arg0->user_data;
    var_f1 = temp_r3->x40_vel.x;
    if (var_f1 < it_804DC708) {
        var_f1 = -var_f1;
    }
    if (!(var_f1 < it_804DC70C) || (temp_r3->facing_dir == it_804DC708)) {
        if (temp_r3->x40_vel.x >= it_804DC708) {
            var_f0 = it_804DC710;
        } else {
            var_f0 = it_804DC714;
        }
        temp_r3->facing_dir = var_f0;
    }

    if (it_804DC714 == temp_r3->facing_dir) {
        var_r4 = -1;
    } else {
        var_r4 = 1;
    }
    mpColl_800436D8(&temp_r3->x378_itemColl, var_r4);
}

void it_80272A18(HSD_JObj* item_jobj)
{
    HSD_JObjClearFlagsAll(item_jobj, 0x10U);
}

void it_80272A3C(HSD_JObj* item_jobj)
{
    HSD_JObjSetFlagsAll(item_jobj, 0x10U);
}

void it_80272A60(Item_GObj* gobj)
{
    Item* item;

    item = gobj->user_data;
    efSync_Spawn(0x40E, gobj, &item->pos);
    Item_8026AE84(item, 0x74, 0x7F, 0x40);
    it_80274C60(gobj);
}

void it_80272AC4(Item_GObj* arg0, Vec3* arg1)
{
    Item* temp_r31;
    Vec3* temp;

    temp_r31 = arg0->user_data;
    // mut add + return i guess?
    temp = lbVector_Add(arg1, &temp_r31->pos);
    efSync_Spawn(0x40C, arg0, arg1);
    Item_8026AE84(temp_r31, 0x74, 0x7F, 0x40);
    it_80274C60(arg0);
}

void it_80272B40(Item_GObj* arg0)
{
    Item* temp_r31;

    temp_r31 = arg0->user_data;
    efSync_Spawn(0x40C, arg0, &temp_r31->pos);
    Item_8026AE84(temp_r31, 0x74, 0x7F, 0x40);
    it_80274C60(arg0);
}

void it_80272BA4(Item_GObj* arg0)
{
    Item* temp_r31;

    temp_r31 = arg0->user_data;
    efSync_Spawn(0x411, arg0, &temp_r31->pos);
    Item_8026AE84(temp_r31, 0x73, 0x7F, 0x40);
    it_80274C60(arg0);
}

void it_80272C08(Item_GObj* arg0)
{
    Item* temp_r31;

    temp_r31 = arg0->user_data;
    efSync_Spawn(0x410, arg0, &temp_r31->pos);
    Item_8026AE84(temp_r31, 0x74, 0x7F, 0x40);
    it_80274C60(arg0);
}

int it_80272C6C(HSD_GObj* arg0)
{
    return lb_8000B09C(arg0->hsd_obj);
}

HSD_JObj* it_80272C90(Item_GObj* gobj)
{
    return it_80272CC0(
        gobj, ((Item*) (gobj->user_data))
                  ->xC4_article_data->x10_modelDesc->x8_bone_attach_id);
}

HSD_JObj* it_80272CC0(Item_GObj* arg0, enum_t arg1)
{
    HSD_JObj* var_r0;
    HSD_JObj* var_r3;
    Item* temp_r6;

    temp_r6 = arg0->user_data;
    var_r3 = arg0->hsd_obj;
    if ((u32) temp_r6->xC4_article_data->x10_modelDesc->x4_bone_count != 0) {
        return temp_r6->xBBC_dynamicBoneTable->bones[arg1];
    }
    if (arg1 != 0) {
        for (; arg1 > 0; --arg1) {
            var_r0 = var_r3 == NULL ? NULL : var_r3->child;
            var_r3 = var_r0;
        }
    }

    return var_r3;
}

int it_80272D1C(HSD_GObj* gobj)
{
    if ((gobj != NULL) && ((u16) gobj->classifier == 6)) {
        return 1;
    }
    return 0;
}

s32 it_80272D40(HSD_GObj* gobj)
{
    s32 var_r0;

    if (ftLib_80086960(gobj) != 0) {
        return 0;
    }
    if ((gobj != NULL) && ((u16) gobj->classifier == 6)) {
        var_r0 = 1;
    } else {
        var_r0 = 0;
    }
    if (var_r0 != 0) {
        return 1;
    }
    return 2;
}

// scratch matches, it's also the output of the decomp tool. objdiff doesn't
// like it though bool itColl_BounceOffVictim(Item_GObj* arg0)
// {
//     Item* temp_r4;
//     ItemCommonData* val;

//     temp_r4 = arg0->user_data;
//     temp_r4->x40_vel.x *= it_804D6D28->x58_float;
//     val = it_804D6D28;
//     temp_r4->x40_vel.y =
//         (temp_r4->x40_vel.y * val->x5C_float) + val->x60_float;
//     return (bool) val;
// }

extern char it_804D5188;
extern char it_804D5190;

extern inline void __80262DE4_inline(HSD_JObj* arg0)
{
    u32 temp_r4;
    s32 var_r3;

    if (!(arg0->flags & 0x02000000)) {
        if (arg0 == NULL) {
            goto label_1;
        }
        if (arg0 != NULL) {
            goto label_2;
        }
        // unreachable
        __assert(&it_804D5188, 0x234U, &it_804D5190);
    label_2:
        temp_r4 = arg0->flags;
        var_r3 = 0;
        if (!(temp_r4 & 0x800000) && (temp_r4 & 0x40)) {
            var_r3 = 1;
        }
        if (var_r3 == 0) {
            HSD_JObjSetMtxDirtySub(arg0);
        }
    }
label_1:
    return;
}

void it_80272DE4(HSD_JObj* arg0, f32 arg8)
{
    if (arg0 == NULL) {
        __assert(&it_804D5188, 0x429U, &it_804D5190);
    }
    arg0->scale.x += arg8;
    __80262DE4_inline(arg0);

    if (arg0 == NULL) {
        __assert(&it_804D5188, 0x435U, &it_804D5190);
    }
    arg0->scale.y += arg8;
    __80262DE4_inline(arg0);

    if (arg0 == NULL) {
        __assert(&it_804D5188, 0x441U, &it_804D5190);
    }
    arg0->scale.z += arg8;
    __80262DE4_inline(arg0);

    return;
}

void it_80272F7C(HSD_JObj* arg0, f32 scale)
{
    Vec3 temp;

    temp.x = temp.y = temp.z = scale;
    if (arg0 == NULL) {
        __assert(&it_804D5188, 0x2F8U, &it_804D5190);
    }
    arg0->scale = temp;
    __80262DE4_inline(arg0);
}

int it_80273030(Item_GObj* arg0)
{
    Item* temp_r4;

    temp_r4 = arg0->user_data;
    temp_r4->x40_vel.x = -temp_r4->x40_vel.x * temp_r4->xC70;
    temp_r4->x40_vel.y = -temp_r4->x40_vel.y * temp_r4->xC70;
    temp_r4->facing_dir = -temp_r4->facing_dir;
    temp_r4->xD44_lifeTimer = temp_r4->xD48_halfLifeTimer;
    return 0;
}

bool itColl_BounceOffShield(Item_GObj* arg0)
{
    Item* temp_r3;
    Item* temp_r4;
    f32 var_f0;
    f32 var_f1;
    s32 var_r4;
    s32 stack[2];

    temp_r4 = arg0->user_data;
    lbVector_Mirror(&temp_r4->x40_vel, &temp_r4->xC58);
    temp_r3 = arg0->user_data;
    var_f1 = temp_r3->x40_vel.x;
    if (var_f1 < it_804DC708) {
        var_f1 = -var_f1;
    }
    if (!(var_f1 < it_804DC70C) || (temp_r3->facing_dir == it_804DC708)) {
        if (temp_r3->x40_vel.x >= it_804DC708) {
            var_f0 = it_804DC710;
        } else {
            var_f0 = it_804DC714;
        }
        temp_r3->facing_dir = var_f0;
    }
    if (it_804DC714 == temp_r3->facing_dir) {
        var_r4 = -1;
    } else {
        var_r4 = 1;
    }
    mpColl_800436D8(&temp_r3->x378_itemColl, var_r4);
    return 0;
}

bool it_80273130(Item_GObj* arg0)
{
    Item* temp_r3;

    temp_r3 = arg0->user_data;
    temp_r3->xD44_lifeTimer -= it_804DC710;
    if (temp_r3->xD44_lifeTimer <= it_804DC708) {
        return 1;
    }
    return 0;
}

void it_80273168(Item_GObj* gobj)
{
    Item* temp_r3;

    temp_r3 = gobj->user_data;
    if (!(temp_r3->xDCD_flag.bits.b2)) {
        Item_8026AE84((Item*) temp_r3, temp_r3->xD70, 0x7F, 0x40);
    }
}

void it_802731A4(Item_GObj* arg0)
{
    Item* temp_r3;

    temp_r3 = arg0->user_data;
    if (!temp_r3->xDCD_flag.bits.b2) {
        Item_8026AE84((Item*) temp_r3, temp_r3->xD78, 0x7F, 0x40);
    }
}

void it_802731E0(Item_GObj* arg0)
{
    Item* temp_r3;

    temp_r3 = arg0->user_data;
    if (!temp_r3->xDCD_flag.bits.b2) {
        Item_8026AE84((Item*) temp_r3, temp_r3->xD74, 0x7F, 0x40);
    }
}

void it_8027321C(Item_GObj* arg0)
{
    Item* temp_r3;

    temp_r3 = arg0->user_data;
    if (!temp_r3->xDCD_flag.bits.b2) {
        if (temp_r3->kind == It_Kind_Unk4) {
            lbAudioAx_80023870(temp_r3->xD84, 0x7F, 0x40, 0x9A);
            return;
        }
        Item_8026AE84(temp_r3, temp_r3->xD84, 0x7F, 0x40);
    }
}

void it_8027327C(Item_GObj* gobj, s32 ID1, s32 ID2)
{
    Item* temp_r31;

    temp_r31 = gobj->user_data;
    if (ID1 != -1) {
        it_802787B4();
    }
    if (!temp_r31->xDCD_flag.bits.b2) {
        it_802732E4(temp_r31, ID2);
        if (ID2 == 0x12F) {
            lbAudioAx_80024DC4(ID2);
        }
    }
}

void it_802732E4(Item* arg0, s32 arg1)
{
    if (!arg0->xDCD_flag.bits.b2) {
        Item_8026AE84(arg0, arg1, 0x7F, 0x40);
    }
}

// TODO it_80273318 98.17% match: https://decomp.me/scratch/XS1uH

void it_80273408(Item_GObj* gobj)
{
    it_80273454(gobj);
    it_8027346C((HSD_GObj*) gobj);
    it_80273484((HSD_GObj*) gobj);
    it_8027349C(gobj);
    it_802734B4(gobj);
}

void it_80273454(Item_GObj* arg0)
{
    Item* temp_r3;

    temp_r3 = arg0->user_data;
    temp_r3->x40_vel.x = temp_r3->x40_vel.y = temp_r3->x40_vel.z = it_804DC708;
}

void it_8027346C(Item_GObj* gobj)
{
    Item* temp_r3 = gobj->user_data;
    temp_r3->x64_vec_unk2.x = temp_r3->x64_vec_unk2.y =
        temp_r3->x64_vec_unk2.z = it_804DC708;
}

void it_80273484(Item_GObj* gobj)
{
    Item* temp_r3;

    temp_r3 = gobj->user_data;
    temp_r3->x58_vec_unk.x = temp_r3->x58_vec_unk.y = temp_r3->x58_vec_unk.z =
        it_804DC708;
}

void it_8027349C(Item_GObj* arg0)
{
    Item* temp_r3;

    temp_r3 = arg0->user_data;
    temp_r3->x70_nudge.x = temp_r3->x70_nudge.y = temp_r3->x70_nudge.z =
        it_804DC708;
}

void it_802734B4(HSD_GObj* arg0)
{
    u8* temp_r3;

    // not Item* unless the pad bytes are wrong?
    temp_r3 = (u8*) arg0->user_data;
    // the ordering suggests these are a bunch of Vec3 assignments
    *(f32*) (temp_r3 + 0xac) = *(f32*) (temp_r3 + 0xb4) =
        *(f32*) (temp_r3 + 0xa0) = *(f32*) (temp_r3 + 0xa4) =
            *(f32*) (temp_r3 + 0xa8) = *(f32*) (temp_r3 + 0x94) =
                *(f32*) (temp_r3 + 0x98) = *(f32*) (temp_r3 + 0x9c) =
                    *(f32*) (temp_r3 + 0x88) = *(f32*) (temp_r3 + 0x8c) =
                        *(f32*) (temp_r3 + 0x90) = *(f32*) (temp_r3 + 0x7c) =
                            *(f32*) (temp_r3 + 0x80) =
                                *(f32*) (temp_r3 + 0x84) = it_804DC708;

    *(f32*) (temp_r3 + 0xb0) = it_804DC710;
}

void it_80273500(Item_GObj* arg0, Vec3* arg1)
{
    u8* temp_r3;
    Item* temp;

    temp = arg0->user_data;
    // assinging directly causes a memcopy instead of using float transfers
    temp->x40_vel.x = arg1->x;
    temp->x40_vel.y = arg1->y;
    temp->x40_vel.z = arg1->z;
    // assuming these are inlines?
    temp = arg0->user_data;
    temp->x64_vec_unk2.x = temp->x64_vec_unk2.y = temp->x64_vec_unk2.z = 0;
    temp = arg0->user_data;
    temp->x58_vec_unk.x = temp->x58_vec_unk.y = temp->x58_vec_unk.z = 0;
    temp = arg0->user_data;
    temp->x70_nudge.x = temp->x70_nudge.y = temp->x70_nudge.z = 0;
    temp = arg0->user_data;

    // this looks like it shares an inline from https://decomp.me/scratch/o5VnE
    temp_r3 = (u8*) temp;
    *(f32*) (temp_r3 + 0xac) = *(f32*) (temp_r3 + 0xb4) =
        *(f32*) (temp_r3 + 0xa0) = *(f32*) (temp_r3 + 0xa4) =
            *(f32*) (temp_r3 + 0xa8) = *(f32*) (temp_r3 + 0x94) =
                *(f32*) (temp_r3 + 0x98) = *(f32*) (temp_r3 + 0x9c) =
                    *(f32*) (temp_r3 + 0x88) = *(f32*) (temp_r3 + 0x8c) =
                        *(f32*) (temp_r3 + 0x90) = *(f32*) (temp_r3 + 0x7c) =
                            *(f32*) (temp_r3 + 0x80) =
                                *(f32*) (temp_r3 + 0x84) = 0;

    *(f32*) (temp_r3 + 0xb0) = it_804DC710;
}

void it_80273598(Item_GObj* arg0, s32 arg1, s32 arg2)
{
    HSD_GObj* temp_r3;
    Item* temp_r31;

    temp_r31 = arg0->user_data;
    // storing owner causes incorrect register allocations
    if ((temp_r31->owner != NULL) && (ftLib_80086960(temp_r31->owner) != 0)) {
        ftLib_80086D40(temp_r31->owner, arg1, arg2);
    }
}

void it_80273600(Item_GObj* arg0)
{
    Item* temp_r31;

    temp_r31 = arg0->user_data;
    // storing owner causes incorrect register allocation
    if ((temp_r31->owner != NULL) && (ftLib_80086960(temp_r31->owner) != 0)) {
        ftLib_80086E68(temp_r31->owner);
    }
}

void it_80273648(s32 arg0, s32 arg1, s32 arg2)
{
    ftLib_80086DC4(arg1, arg2);
}

void it_80273670(Item_GObj* arg0, s32 arg1, f32 arg8)
{
    HSD_JObj* temp_r31;
    HSD_JObj* var_r3;
    Item* temp_r30;
    HSD_Joint* temp_r4;
    ItemStateDesc* temp_r6;
    s32 temp[2];

    temp_r30 = arg0->user_data;
    temp_r31 = arg0->hsd_obj;
    temp_r30->xD0_itemStateDesc =
        &(temp_r30->xC4_article_data->xC_itemStates->x0_itemStateDesc[arg1]);
    if ((void*) temp_r30->xD0_itemStateDesc != NULL) {
        HSD_JObjRemoveAnimAll(temp_r31);
        temp_r4 = temp_r30->xC8_joint;
        if (temp_r4 != NULL) {
            if (temp_r31 == NULL) {
                var_r3 = NULL;
            } else {
                var_r3 = temp_r31->child;
            }
            lb_8000B804(var_r3, temp_r4->child);
        }
        temp_r6 = temp_r30->xD0_itemStateDesc;
        HSD_JObjAddAnimAll(temp_r31, temp_r6->x0_anim_joint,
                           temp_r6->x4_matanim_joint, temp_r6->x8_parameters);
        lb_8000BA0C(temp_r31, temp_r30->x5D0_animFrameSpeed);
        HSD_JObjReqAnimAll(temp_r31, arg8);
    }
    HSD_JObjAnimAll(temp_r31);
    HSD_JObjRemoveAnimAll(temp_r31);
    temp_r30->x52C_item_script = 0;
}

void it_80274198(HSD_GObj* arg0, HSD_GObj* arg1)
{
    Item* temp_r5;
    HSD_GObj* var_r6;
    HSD_GObj* temp_r4;

    temp_r5 = arg0->user_data;
    var_r6 = temp_r5->owner;
    if (((UnkFlagStruct*) ((u8*) temp_r5 + 0xdc8))->bits.b0 != 0) {
        if ((s32) arg1 == 1) {
            temp_r4 = (HSD_GObj*) temp_r5->x51C;
            temp_r5->owner = temp_r4;
            var_r6 = temp_r4;
            temp_r5->x51C = 0;
        } else {
            var_r6 = (HSD_GObj*) temp_r5->x51C;
        }
    }
    it_80273F34(arg0, var_r6, temp_r5);
}

void it_802741F4(Item_GObj* arg0, s32 arg1)
{
    HSD_GObj* temp_r4;
    HSD_GObj* var_r6;
    Item* temp_r5;

    temp_r5 = arg0->user_data;
    var_r6 = temp_r5->owner;
    if (((UnkFlagStruct*) temp_r5 + 0xDC8)->bits.b0) {
        if (arg1 == 1) {
            temp_r4 = (HSD_GObj*) temp_r5->x51C;
            temp_r5->owner = temp_r4;
            var_r6 = temp_r4;
            temp_r5->x51C = 0;
        } else {
            var_r6 = (HSD_GObj*) temp_r5->x51C;
        }
    }
    it_80273F34(arg0, var_r6, temp_r5);
}

extern f32 it_804DC740;

void it_80275D5C(HSD_GObj* arg0, ECB* arg1)
{
    f32 temp_f4;
    s32 var_r4;
    Item* temp_r31;
    s32 stack[4];

    temp_r31 = arg0->user_data;
    temp_f4 = temp_r31->scl;
    temp_r31->xC1C = *arg1;
    mpColl_8004220C(
        &temp_r31->x378_itemColl, arg0, temp_r31->xC1C.top * temp_f4,
        temp_r31->xC1C.bottom * temp_f4, temp_r31->xC1C.right * temp_f4,
        temp_r31->xC1C.left * temp_f4);
    if (it_804DC740 == temp_r31->facing_dir) {
        var_r4 = -1;
    } else {
        var_r4 = 1;
    }
    mpColl_800436D8(&temp_r31->x378_itemColl, var_r4);
}