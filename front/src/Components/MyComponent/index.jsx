import React from 'react';
import { AllContext } from '../../App/MyContext';
import { ModalThemeChanged } from '../Modals/ModalThemeChanged';

function MyComponent() {
    const { ls, lf, s, f, Icons } = React.useContext(AllContext);
    const icons = new Icons();
    return (
        <React.Fragment>
            <div className='flex flex-wrap justify-center'>
                <h2 className={`text-center basis-full mt-3 font-bold text-3xl ${ls?.theme === 'black' ? 'text-white' : 'text-black'}`}
                >
                    Actual theme: {ls.theme}
                    <br />
                    {s?.init?.saludo || ":'c"}
                </h2>
                <button
                    className="btn btn-primary basis-1/4 mt-3"
                    onClick={lf.toggleTheme}
                    >
                    Change Theme
                    <span className='text-icon'>{icons.brush()}</span>
                </button>
                <h3 className='text-center w-full mt-3'>{s?.main?.message}</h3>
            </div>
            {/* {s.modals?.themes?.changed && <ModalThemeChanged zindex={-1} />} */}
            {s.modals?.themes?.changed && <ModalThemeChanged />}
        </React.Fragment>
    )
}

export { MyComponent };
