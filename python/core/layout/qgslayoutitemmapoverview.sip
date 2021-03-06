/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/layout/qgslayoutitemmapoverview.h                           *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/





class QgsLayoutItemMapOverviewStack : QgsLayoutItemMapItemStack
{
%Docstring
 A collection of overviews which are drawn above the map content in a
 QgsLayoutItemMap. The overview stack controls which overviews are drawn and the
 order they are drawn in.
.. versionadded:: 3.0
.. seealso:: QgsLayoutItemMapOverview
%End

%TypeHeaderCode
#include "qgslayoutitemmapoverview.h"
%End
  public:

    QgsLayoutItemMapOverviewStack( QgsLayoutItemMap *map );
%Docstring
 Constructor for QgsLayoutItemMapOverviewStack, attached to the specified
 ``map``.
%End

    void addOverview( QgsLayoutItemMapOverview *overview /Transfer/ );
%Docstring
 Adds a new map ``overview`` to the stack and takes ownership of the overview.
 The overview will be added to the end of the stack, and rendered
 above any existing map overviews already present in the stack.
.. note::

   After adding a overview to the stack, update()
 should be called for the QgsLayoutItemMap to prevent rendering artifacts.
.. seealso:: removeOverview()
%End

    void removeOverview( const QString &overviewId );
%Docstring
 Removes an overview with matching overviewId from the stack and deletes the corresponding QgsLayoutItemMapOverview
.. note::

   After removing an overview from the stack, update()
 should be called for the QgsLayoutItemMap to prevent rendering artifacts.
.. seealso:: addOverview()
%End

    void moveOverviewUp( const QString &overviewId );
%Docstring
 Moves an overview with matching overviewId up the stack, causing it to be rendered above other overviews.
.. note::

   After moving an overview within the stack, update() should be
 called for the QgsLayoutItemMap to redraw the map with the new overview stack order.
.. seealso:: moveOverviewDown()
%End

    void moveOverviewDown( const QString &overviewId );
%Docstring
 Moves an overview with matching overviewId down the stack, causing it to be rendered below other overviews.
.. note::

   After moving an overview within the stack, update() should be
 called for the QgsLayoutItemMap to redraw the map with the new overview stack order.
.. seealso:: moveOverviewUp()
%End

    QgsLayoutItemMapOverview *overview( const QString &overviewId ) const;
%Docstring
 Returns a reference to an overview with matching overviewId within the stack.
.. seealso:: constOverview()
 :rtype: QgsLayoutItemMapOverview
%End

    QgsLayoutItemMapOverview *overview( const int index ) const;
%Docstring
 Returns a reference to an overview at the specified ``index`` within the stack.
.. seealso:: constOverview()
 :rtype: QgsLayoutItemMapOverview
%End

    QgsLayoutItemMapOverview &operator[]( int index );

    QList< QgsLayoutItemMapOverview * > asList() const;
%Docstring
 Returns a list of QgsLayoutItemMapOverviews contained by the stack.
 :rtype: list of QgsLayoutItemMapOverview
%End
    virtual bool readXml( const QDomElement &elem, const QDomDocument &doc, const QgsReadWriteContext &context );


};

class QgsLayoutItemMapOverview : QgsLayoutItemMapItem
{
%Docstring
 An individual overview which is drawn above the map content in a
 QgsLayoutItemMap, and shows the extent of another QgsLayoutItemMap.
.. versionadded:: 3.0
.. seealso:: QgsLayoutItemMapOverviewStack
%End

%TypeHeaderCode
#include "qgslayoutitemmapoverview.h"
%End
  public:

    QgsLayoutItemMapOverview( const QString &name, QgsLayoutItemMap *map );
%Docstring
 Constructor for QgsLayoutItemMapOverview.
 \param name friendly display name for overview
 \param map QgsLayoutItemMap the overview is attached to
%End

    virtual void draw( QPainter *painter );

    virtual bool writeXml( QDomElement &elem, QDomDocument &doc, const QgsReadWriteContext &context ) const;

    virtual bool readXml( const QDomElement &itemElem, const QDomDocument &doc, const QgsReadWriteContext &context );

    virtual bool usesAdvancedEffects() const;


    void setFrameMapUuid( const QString &uuid );
%Docstring
 Sets overview frame map ``uuid``. Set an empty ``uuid`` to disable
 the overview frame.
.. seealso:: frameMapUuid()
.. seealso:: setFrameMap()
%End

    QString frameMapUuid() const;
%Docstring
 Returns the uuid of source map, or an empty string if no map set.
.. seealso:: setFrameMapUuid()
.. seealso:: frameMap()
 :rtype: str
%End

    void setFrameMap( QgsLayoutItemMap *map );
%Docstring
 Sets the ``map`` to show the overview extent of.
.. seealso:: frameMap()
%End

    QgsLayoutItemMap *frameMap();
%Docstring
 Returns the source map to show the overview extent of.
.. seealso:: setFrameMap()
 :rtype: QgsLayoutItemMap
%End

    void setFrameSymbol( QgsFillSymbol *symbol /Transfer/ );
%Docstring
 Sets the fill ``symbol`` used for drawing the overview extent. Ownership
 is transferred to the overview.
.. seealso:: frameSymbol()
%End

    QgsFillSymbol *frameSymbol();
%Docstring
 Returns the fill symbol used for drawing the overview extent.
.. seealso:: setFrameSymbol()
 :rtype: QgsFillSymbol
%End

    QPainter::CompositionMode blendMode() const;
%Docstring
 Retrieves the blending mode used for drawing the overview.
.. seealso:: setBlendMode()
 :rtype: QPainter.CompositionMode
%End

    void setBlendMode( const QPainter::CompositionMode mode );
%Docstring
 Sets the blending ``mode`` used for drawing the overview.
.. seealso:: blendMode()
%End

    bool inverted() const;
%Docstring
 Returns whether the overview frame is inverted, ie, whether the shaded area is drawn outside
 the extent of the overview map.
.. seealso:: setInverted()
 :rtype: bool
%End

    void setInverted( const bool inverted );
%Docstring
 Sets whether the overview frame is ``inverted``, ie, whether the shaded area is drawn outside
 the extent of the overview map.
.. seealso:: inverted()
%End

    bool centered() const;
%Docstring
 Returns whether the extent of the map is forced to center on the overview.
.. seealso:: setCentered()
 :rtype: bool
%End

    void setCentered( const bool centered );
%Docstring
 Sets whether the extent of the map is forced to center on the overview
.. seealso:: centered()
%End

    void connectSignals();
%Docstring
 Reconnects signals for overview map, so that overview correctly follows changes to source
 map's extent.
%End

  public slots:

    void overviewExtentChanged();
%Docstring
 Handles recentering of the map and redrawing of the map's overview
%End

};

/************************************************************************
 * This file has been generated automatically from                      *
 *                                                                      *
 * src/core/layout/qgslayoutitemmapoverview.h                           *
 *                                                                      *
 * Do not edit manually ! Edit header and run scripts/sipify.pl again   *
 ************************************************************************/
